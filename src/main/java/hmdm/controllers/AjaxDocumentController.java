package hmdm.controllers;

import java.io.*;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import hmdm.util.Word2Html2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import hmdm.common.ResponseData;
import hmdm.dto.Document;
import hmdm.service.IDocumentService;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;


@RestController("ajaxDocumentController")
@RequestMapping("/ajax/document")
public class AjaxDocumentController {
	@Autowired
	private IDocumentService documentService;
	
	@RequestMapping(value="searchAll",method=RequestMethod.GET)
	public ResponseData<List<Document>> searchAll(){
		ResponseData<List<Document>> result = new ResponseData<List<Document>>();
		Document document = new Document();
		document.setDocumentParent(0);
		
		try{
			List<Document> re = documentService.searchDocuments(document);
			if(re == null){
				result.setMsg("Not document exist !");
			}else{
				result.setMsg(ResponseData.RESULT_SUCCESS);
				result.setData(re);
			}
		}catch(Exception e){
			e.printStackTrace();
			result.setMsg(e.getMessage());
		}
		
		return result;
	}
	
	
	@RequestMapping(value="searchById",method=RequestMethod.GET)
	public ResponseData<Document> searchById(@RequestParam(name = "documentId", required = true) Integer documentId){
		ResponseData<Document> result = new ResponseData<Document>();
		Document document = new Document();
		document.setDocumentId(documentId);
		
		try{
			Document re = documentService.searchById(document);

			if(re == null){
				result.setMsg("The document is not exist !");
			}else{
				result.setMsg(ResponseData.RESULT_SUCCESS);
				result.setData(re);
			}
		}catch(Exception e){
			e.printStackTrace();
			result.setMsg(e.getMessage());
		}
		
		System.out.println(result.getData());
		return result;
	}
	
	@RequestMapping(value="deleteById",method=RequestMethod.GET)
	public ResponseData<Document> deleteById(@RequestParam(name = "document_id", required = true) Integer documentId){
		ResponseData<Document> result = new ResponseData<Document>();
		Document document = new Document();
		document.setDocumentId(documentId);
		
		try{
			int re = documentService.deleteById(document);
			if(re > 0){
				result.setMsg(ResponseData.RESULT_SUCCESS);
			}else{
				result.setMsg("The document is not exist !");
			}
		}catch(Exception e){
			e.printStackTrace();
			result.setMsg(e.getMessage());
		}
		return result;
	}
	
	@RequestMapping(value="modifyById",method=RequestMethod.POST)
	public ResponseData<Document> modifyById(
			HttpServletRequest request,
			@RequestParam(name = "document_id", required = true) Integer documentId,
			@RequestParam(name = "document_name", required = true) String documentName,
			@RequestParam(name = "document_parent", required = true) Integer documentParent,
			@RequestParam(name = "enable", required = true) Character enable
			//@RequestParam(name = "document_file", required = false) MultipartFile uploadVideo
			) throws IOException {
		/*System.out.println(uploadVideo.getOriginalFilename());
		ResponseData<Document> result = new ResponseData<Document>();
		Document document = new Document();
		document.setDocumentId(documentId);
		document.setDocumentName(documentName);
		document.setDocumentParent(documentParent);
		document.setEnable_flag(enable);
		document.setLast_updated_by(0L);
		document.setLast_updated_date(new Date());
		String appPath = request.getSession().getServletContext().getRealPath("");
		String outputFile =appPath+ "/backstage/html/"+documentName+".html";
		InputStream inputStream = null;
		if(uploadVideo != null){
			try{
				inputStream = Word2Html2.word2htmlWithInputStream(
						uploadVideo.getInputStream(),
						documentName + ".html",
						"docx",
						"html"
				);
				document.setDocumentUrl("backstage/html/"+documentName+".html");
			}catch (InterruptedException e) {
				e.printStackTrace();
				result.setMsg(e.getMessage());
			} catch (ParseException e) {
				e.printStackTrace();
				result.setMsg(e.getMessage());
			} catch (URISyntaxException e) {
				e.printStackTrace();
				result.setMsg(e.getMessage());
			} catch (IOException e) {
				e.printStackTrace();
				result.setMsg(e.getMessage());
			}
			return result;
		}
		OutputStream out = new FileOutputStream(outputFile);
		byte[] b = new byte[1024];
		int i = 0;
		while ((i = inputStream.read(b))!=-1){
			out.write(b,0,i);
		}
		out.flush();
		out.close();
		System.out.print(document);
		try{
			int re = documentService.modifyById(document);
			if(re > 0){
				result.setData(document);
				result.setMsg(ResponseData.RESULT_SUCCESS);
			}else{
				result.setMsg("The document is not exist !");
			}
		}catch(Exception e){
			e.printStackTrace();
			result.setMsg(e.getMessage());
		}
		return result;*/

		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		//判断form表单是否设置multipart/form-data
		if (multipartResolver.isMultipart(request)) {
			System.out.println("获取文件");
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			//获取文件名列表
			Iterator<String> iter = multiRequest.getFileNames();
			while (iter.hasNext()) {

				MultipartFile file = multiRequest.getFile(iter.next().toString());
				System.out.println("获取文件成功");
				String fileName = file.getOriginalFilename();
				InputStream in = null;
				try {
					in = file.getInputStream();
				} catch (IOException e) {
					e.printStackTrace();
				}
				InputStream inputStream = null;
				try {
					System.out.println("开始转换,文件名：" + fileName);
					inputStream = Word2Html2.word2htmlWithInputStream(in, fileName, "docx", "html");
					System.out.println("转换完成");
				} catch (URISyntaxException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				} catch (ParseException e) {
					e.printStackTrace();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				String htmlFile = fileName.substring(0, fileName.lastIndexOf("."))
						+ ".html";
				String appPath = request.getSession().getServletContext().getRealPath("");
				String outputFile =appPath+ "/backstage/html/"+htmlFile;
				OutputStream out = new FileOutputStream(htmlFile);
				byte[] b = new byte[1024];
				int i = 0;
				while ((i = inputStream.read(b))!=-1){
					out.write(b,0,i);
				}
				out.flush();
				out.close();
			}
		}
		ResponseData<Document> result = new ResponseData<Document>();
		result.setMsg(ResponseData.RESULT_SUCCESS);
		return result;
	}
	
	@RequestMapping(value="create",method=RequestMethod.GET)
	public ResponseData<Document> create(
			@RequestParam(name = "document_name", required = true) String documentName,
			@RequestParam(name = "document_type", required = true) Integer documentType,
			@RequestParam(name = "document_parent", required = true) Integer documentParent
			){
		ResponseData<Document> result = new ResponseData<Document>();
		Document document = new Document();
		
		document.setDocumentName(documentName);
		document.setDocumentParent(documentParent);
		document.setDocumentType(documentType);
		
		document.setLast_updated_by(0L);
		document.setLast_updated_date(new Date());
		document.setCreated_by(0L);
		document.setCreation_date(new Date());

		try{
			int re = documentService.save(document);
			if(re > 0){
				result.setData(document);
				result.setMsg(ResponseData.RESULT_SUCCESS);
			}else{
				result.setMsg("Error !");
			}
		}catch(Exception e){
			e.printStackTrace();
			result.setMsg(e.getMessage());
		}
		return result;
	}
}

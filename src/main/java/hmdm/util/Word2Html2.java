package hmdm.util;

import org.aioobe.cloudconvert.CloudConvertService;
import org.aioobe.cloudconvert.ConvertProcess;
import org.aioobe.cloudconvert.ProcessStatus;
import org.junit.Test;

import java.io.*;
import java.net.URISyntaxException;
import java.text.ParseException;

/**
 * Created by JoeHuang on 2017/8/10.
 */
public class Word2Html2 {

    public static void word2html(String inputFile,String outputFile,String inputFormat,String outputFormat,String apiKey) throws URISyntaxException, IOException, ParseException, InterruptedException {
        File file = new File(inputFile);
        word2htmlWithInputStream(new FileInputStream(file),file.getName(),outputFile,inputFormat,outputFormat,apiKey);
    }

    public static void word2htmlWithInputStream(InputStream in, String fileName,String outputFile, String inputFormat, String outputFormat,String apiKey) throws URISyntaxException, IOException, ParseException, InterruptedException {
        InputStream inputStream = word2htmlWithInputStream(in, fileName, inputFormat, outputFormat, apiKey);
        OutputStream out = new FileOutputStream(outputFile);
        byte[] b = new byte[1024];
        int i = 0;
        while ((i = inputStream.read(b))!=-1){
            out.write(b,0,i);
        }
        out.flush();
        out.close();
    }

    public static InputStream word2htmlWithInputStream(InputStream in, String fileName, String inputFormat, String outputFormat, String apiKey) throws URISyntaxException, IOException, ParseException, InterruptedException {
        // Create service object
        CloudConvertService service = new CloudConvertService(apiKey);

        // Create conversion process
        ConvertProcess process = service.startProcess(inputFormat, outputFormat);

        // Perform conversion
        process.startConversion(in,fileName);

        // Wait for result
        ProcessStatus status;
        waitLoop: while (true) {
            status = process.getStatus();

            switch (status.step) {
                case FINISHED: break waitLoop;
                case ERROR: throw new RuntimeException(status.message);
            }

            // Be gentle
            Thread.sleep(200);
        }

        // Download result
        InputStream download = service.download(status.output.url);

        // Clean up
        process.delete();

        return download;
    }

    public static void main(String args[]){
        try {
            word2html("D:\\java培训资料\\JavaSE_OOP技能考试答案.docx","D:\\java培训资料\\JavaSE_OOP技能考试答案.html","docx","html","");
        } catch (URISyntaxException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}

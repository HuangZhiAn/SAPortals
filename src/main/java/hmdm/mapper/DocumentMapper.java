package hmdm.mapper;

import java.util.List;

import hmdm.dto.Document;


public interface DocumentMapper{
	public List<Document> selectDocuments(Document document);
	public Document selectById(Document document);
	public int insert(Document document);
	public int deleteById(Document document);
	public int updateById(Document document);
}

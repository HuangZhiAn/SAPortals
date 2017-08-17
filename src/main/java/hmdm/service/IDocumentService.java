package hmdm.service;

import java.util.List;

import hmdm.dto.Document;

public interface IDocumentService{
	public List<Document> searchDocuments(Document document);
	public Document searchById(Document document);
	public int save(Document document);
	public int deleteById(Document document);
	public int modifyById(Document document);
}

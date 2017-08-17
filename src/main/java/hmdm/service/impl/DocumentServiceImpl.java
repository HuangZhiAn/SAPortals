package hmdm.service.impl;


import hmdm.dto.Document;
import hmdm.mapper.DocumentMapper;
import hmdm.service.DocumentService;
import hmdm.service.IDocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DocumentServiceImpl implements DocumentService,IDocumentService {
    @Autowired
    private DocumentMapper documentMapper;

    @Override
    public List<Document> searchDocuments(Document document) {
        return documentMapper.selectDocuments(document);
    }

    @Override
    public Document searchById(Document document) {
        return documentMapper.selectById(document);
    }

    @Override
    public int save(Document document) {
        return documentMapper.insert(document);
    }

    @Override
    public int deleteById(Document document) {
        return documentMapper.deleteById(document);
    }

    @Override
    public int modifyById(Document document) {
        return documentMapper.updateById(document);
    }
}

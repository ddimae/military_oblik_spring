package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.Document;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;

import java.util.List;

public interface DocumentService {

    Document createDocument(Document document);

    Document getDocumentById(Long id);

    List<Document> getAllDocument();

    List<Document> getAllDocumentByPrepod(Prepod prepod);

    Document updateDocument(Long id, Document updatedDocument);

    void deleteDocument(Long id);

    List<Document> getDocumentsByPrepodId(Long id);

    Document getDocumentByExample(Document docToFind);

    void deleteDocumentsByPrepod(Prepod prepInDB);
}

package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.Document;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Long> {
    List<Document> findAllByPrepod(Prepod prepod);

    List<Document> findAllByPrepodId(Long id);

    Document findDocumentByDocNumber(String docNumToFind);

}
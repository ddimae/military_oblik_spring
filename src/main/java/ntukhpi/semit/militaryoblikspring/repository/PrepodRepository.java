package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;

@Repository
public interface PrepodRepository extends JpaRepository<Prepod,Long> {

    Prepod getPrepodByFamAndImyaAndOtchAndKafedra_Kid(String fam,String imya, String otch,Long kid);

    Prepod getPrepodByFamAndImyaAndOtchAndDr(String fam, String imya, String otch, LocalDate dr);

    Prepod getPrepodByFamAndImyaAndOtch(String fam, String imya, String otch);
}
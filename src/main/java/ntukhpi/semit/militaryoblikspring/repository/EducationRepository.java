package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.Education;
import ntukhpi.semit.militaryoblikspring.entity.VNZaklad;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EducationRepository extends JpaRepository<Education, Long> {

    Education findEducationByPrepodAndVnzAndYearVypusk(Prepod prep, VNZaklad vnz, String year);
    List<Education> findAllByPrepod(Prepod prepod);
}
package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.EducationPostgraduate;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EducationPostgraduateRepository extends JpaRepository<EducationPostgraduate, Long> {
    List<EducationPostgraduate> findAllByPrepod(Prepod prepod);
}
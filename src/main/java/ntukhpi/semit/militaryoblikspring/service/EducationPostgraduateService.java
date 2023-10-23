package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.EducationPostgraduate;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;

import java.util.List;

public interface EducationPostgraduateService {

    EducationPostgraduate createEducationPostgraduate(EducationPostgraduate educationPostgraduate);

    EducationPostgraduate getEducationPostgraduateById(Long id);

    List<EducationPostgraduate> getAllEducationPostgraduate();

    List<EducationPostgraduate> getAllEducationPostgraduateByPrepod(Prepod prepod);

    EducationPostgraduate updateEducationPostgraduate(Long id, EducationPostgraduate updatedEducationPostgraduate);

    void deleteEducationPostgraduate(Long id);
}

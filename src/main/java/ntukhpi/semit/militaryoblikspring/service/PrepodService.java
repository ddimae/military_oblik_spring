package ntukhpi.semit.militaryoblikspring.service;


import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;

import java.util.List;

public interface PrepodService {

    List<Prepod> getAllPrepod();

    public Prepod getPrepodById(Long id);
    Prepod updatePrepod(Prepod prepod);
    void deletePrepodById(Long id);
    Prepod getPrepodByExapmle(Prepod prepod);

    Prepod getPrepodByExapmleWithDr(Prepod prepod);

    Prepod getPrepodByExapmleFIO(Prepod prepod);

    void savePrepodToDB(List<Prepod> list);
}

package ntukhpi.semit.militaryoblikspring.service;


import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Fakultet;

import java.util.List;

public interface FakultetService {

    Fakultet createFakultet(Fakultet fakultet);

    Fakultet getFakultetById(Long id);

    List<Fakultet> getAllFak();

    Fakultet updateFakultet(Long id, Fakultet updatedFakultet);

    void deleteFakultet(Long id);

    //For add new Reservist
    Long findIDFakultetByFname(String fakName);

    String findAbrFakultetByFname(String fakName);

    Long findIDFakultetByAbr(String fakAbr);

    Long findIDFakultetByOid(String fakOid);


}

package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Dolghnost;

import java.util.List;

public interface DolghnostService {

    Dolghnost createDolghnost(Dolghnost dolghnost);

    Dolghnost getDolghnostById(Long id);
    Dolghnost getDolghnostByCategory(Integer id);

    List<Dolghnost> getAllDolghnost();

    Dolghnost updateDolghnost(Long id, Dolghnost updatedDolghnost);

    void deleteDolghnost(Long id);

    Dolghnost getDolghnostByName(String posadaName);

    Long findIDPosadaByName(String posadaName);

}

package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Zvanie;

import java.util.List;

public interface ZvanieService {

    Zvanie createZvanie(Zvanie zvanie);

    Zvanie getZvanieById(Long id);

    Zvanie getZvanieByName(String zvName);

    List<Zvanie> getAllZvanie();

    Zvanie updateZvanie(Long id, Zvanie updatedZvanie);

    void deleteZvanie(Long id);
}

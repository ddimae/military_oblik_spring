package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.VZvanie;

import java.util.List;

public interface VZvanieService {

    VZvanie createVZvanie(VZvanie vZvanie);

    VZvanie getVZvanieById(Long id);
    VZvanie getVzvanieByName(String vzvanieName);

    List<VZvanie> getAllVZvanie();

    VZvanie updateVZvanie(Long id, VZvanie updatedVZvanie);

    void deleteVZvanie(Long id);

    Long getIdVZvanieByName(String vzvanieName);

}

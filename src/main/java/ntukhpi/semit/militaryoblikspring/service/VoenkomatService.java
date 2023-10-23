package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.Voenkomat;

import java.util.List;

public interface VoenkomatService {

    Voenkomat createVoenkomat(Voenkomat voenkomat);

    Voenkomat getVoenkomatById(Long id);

    Voenkomat getVoenkomatByName(String voenkomatName);

    Long getIDVoenkomatByName(String voenkomatName);

    List<Voenkomat> getAllVoenkomat();

    Voenkomat updateVoenkomat(Long id, Voenkomat updatedVoenkomat);

    void deleteVoenkomat(Long id);


}

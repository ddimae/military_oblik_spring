package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.MilitaryPerson;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;

import java.util.List;

public interface MilitaryPersonService {
    MilitaryPerson createMilitaryPerson(MilitaryPerson militaryPerson);

    MilitaryPerson getMilitaryPersonById(Long id);

    MilitaryPerson getMilitaryPersonByPrepod(Prepod prep);

    List<MilitaryPerson> getAllMilitaryPerson();

    MilitaryPerson updateMilitaryPerson(Long id, MilitaryPerson updateMilitaryPerson);

    void deleteMilitaryPerson(Long id);

    MilitaryPerson saveMilitaryInfo(Prepod prep, String voenkomatName, String vzvanieName, String vskladName,
                                    String vos, int vCategory, String grupaObliku, String pridatnist, String reserv,
                                    String osvitaLevel, String familyState);
}

package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.PersonalData;

public interface PersonalDataService {

    PersonalData getPersonalData();

    PersonalData getPersonalDataById(Long id);

    PersonalData createPersonalData(PersonalData personalData);

    PersonalData updatePersonalData(PersonalData updatedPersonalData);

    PersonalData getPersonalDataByPrepodId(Long id);

    void deletePersonalData(Long id);
}

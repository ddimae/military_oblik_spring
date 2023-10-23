package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.CurrentDoljnostInfo;

public interface CurrentDoljnostInfoService {

    CurrentDoljnostInfo createCurrentDoljnostInfo(CurrentDoljnostInfo currentDoljnostInfo);

    CurrentDoljnostInfo getCurrentDoljnostInfoById(Long id);

    CurrentDoljnostInfo getCurrentDoljnost();

    CurrentDoljnostInfo updateCurrentDoljnostInfo(Long id, CurrentDoljnostInfo updateCurrentDoljnostInfo);

    void deleteCurrentDoljnostInfo(Long id);

    CurrentDoljnostInfo getCurrentDoljnostInfoByPrepodId(Long id);
}

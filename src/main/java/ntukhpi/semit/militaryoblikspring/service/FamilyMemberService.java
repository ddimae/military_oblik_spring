package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.FamilyMember;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;

import java.util.List;

public interface FamilyMemberService {

    FamilyMember createFamilyMember(FamilyMember familyMember);

    FamilyMember getFamilyMemberById(Long id);

    FamilyMember getFamilyMemberByExample(FamilyMember fm);

    List<FamilyMember> getAllFamilyMember();

    List<FamilyMember> getAllFamilyMembersByPrepod(Prepod prepod);

    FamilyMember updateFamilyMember(Long id, FamilyMember updatedFamilyMember);

    void deleteFamilyMember(Long id);

    void deleteAllByPrepod(Prepod prep);
}

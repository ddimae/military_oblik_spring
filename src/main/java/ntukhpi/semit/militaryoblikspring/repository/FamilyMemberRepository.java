package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.FamilyMember;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FamilyMemberRepository extends JpaRepository<FamilyMember, Long> {
    List<FamilyMember> findAllByPrepod(Prepod prepod);

    FamilyMember findFamilyMemberByPrepodAndMemFamAndMemImyaAndMemOtchAndVidRidstvaAndRikNarodz(
            Prepod prep, String fam, String imya, String otch, String vidRistva, String rikNarodz
    );
}
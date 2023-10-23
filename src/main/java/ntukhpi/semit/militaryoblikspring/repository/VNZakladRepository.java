package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.VNZaklad;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VNZakladRepository extends JpaRepository<VNZaklad, Long> {

    VNZaklad getVNZakladByVnzName(String vnzName);

    VNZaklad getVNZakladByVnzShortName(String vnzShortName);

}
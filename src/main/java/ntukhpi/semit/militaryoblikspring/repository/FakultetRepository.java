package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Fakultet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FakultetRepository extends JpaRepository<Fakultet,Long> {

    Fakultet getFakultetByFname(String fakName);
    Fakultet getFakultetByAbr(String fakAbr);
    Fakultet getFakultetByOid(String fakOid);

}
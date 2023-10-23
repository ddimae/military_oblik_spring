package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.MilitaryPerson;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MilitaryPersonRepository extends JpaRepository<MilitaryPerson, Long> {
    MilitaryPerson findMilitaryPersonByPrepod(Prepod prepod);
}
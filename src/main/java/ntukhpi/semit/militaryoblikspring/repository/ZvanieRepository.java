package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Zvanie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ZvanieRepository extends JpaRepository<Zvanie, Long> {
    Zvanie getZvanieByZvanieName(String zvName);
}
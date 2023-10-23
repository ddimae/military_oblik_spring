package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.VZvanie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VZvanieRepository extends JpaRepository<VZvanie, Long> {
    VZvanie findByZvanieName(String vZvanieName);
}
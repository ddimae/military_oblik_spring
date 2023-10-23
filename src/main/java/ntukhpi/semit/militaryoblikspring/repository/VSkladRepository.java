package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.VSklad;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VSkladRepository extends JpaRepository<VSklad, Long> {
    VSklad findVSkladBySkladName(String vskladName);

}
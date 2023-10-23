package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.Voenkomat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoenkomatRepository extends JpaRepository<Voenkomat,Long> {

    Voenkomat findVoenkomatByVoenkomatName(String voenkomatName);


}

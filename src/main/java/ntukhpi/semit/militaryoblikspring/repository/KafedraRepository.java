package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Kafedra;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KafedraRepository extends JpaRepository<Kafedra,Long>  {

      //for filtering
      List<Kafedra> getAllByFakultet_Fname(String fakName);

      //For insert new cafedra

      Kafedra getKafedraByKname(String kafName);
      Kafedra getKafedraByKabr(String kafAbr);

      Kafedra getKafedraByOid(String kafOid);


}
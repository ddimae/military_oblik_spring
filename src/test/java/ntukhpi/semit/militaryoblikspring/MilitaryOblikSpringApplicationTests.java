package ntukhpi.semit.militaryoblikspring;

import ntukhpi.semit.militaryoblikspring.entity.MilitaryPerson;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Fakultet;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Kafedra;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import ntukhpi.semit.militaryoblikspring.repository.FakultetRepository;
import ntukhpi.semit.militaryoblikspring.repository.KafedraRepository;
import ntukhpi.semit.militaryoblikspring.repository.PrepodRepository;
import ntukhpi.semit.militaryoblikspring.service.MilitaryPersonService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class MilitaryOblikSpringApplicationTests {

    @Test
    void contextLoads() {
    }

    @Autowired
    FakultetRepository fakultetRepository;

    @Test
    void showFakultet() {

        System.out.println("\nFakultet list in MySQL:");
        List<Fakultet> fakultetList = fakultetRepository.findAll();
        for (Fakultet f : fakultetList) {
            System.out.println(f.getFname());
        }
    }

    @Autowired
    KafedraRepository kafedraRepository;

    @Test
    void showKafedra() {

        System.out.println("\nKafedra list in MySQL:");
        List<Kafedra> kafedraList = kafedraRepository.findAll();
        for (Kafedra kaf : kafedraList) {
            System.out.println(kaf);
        }
    }

    @Autowired
    PrepodRepository prepodRepository;

    @Test
    void showPrepod() {

        System.out.println("\nPrepod list in MySQL:");
        List<Prepod> prepodList = prepodRepository.findAll();
        for (Prepod prep : prepodList) {
            System.out.println(prep);
        }
    }

    @Autowired
    MilitaryPersonService militaryPersonService;

    @Test
    void showMilitaryPerson() {

        System.out.println("\nMilitaryPerson list in MySQL:");
        List<MilitaryPerson> mpList = militaryPersonService.getAllMilitaryPerson();
        for (MilitaryPerson mp : mpList) {
            System.out.println(mp);
        }
    }







}

package ntukhpi.semit.militaryoblikspring.controller;

import ntukhpi.semit.militaryoblikspring.adapters.ReservistAdapter;
import ntukhpi.semit.militaryoblikspring.entity.MilitaryPerson;
import ntukhpi.semit.militaryoblikspring.entity.VSklad;
import ntukhpi.semit.militaryoblikspring.entity.VZvanie;
import ntukhpi.semit.militaryoblikspring.entity.Voenkomat;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Fakultet;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Kafedra;
import ntukhpi.semit.militaryoblikspring.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


@Controller
public class HomePageController {

    public KafedraService kafedraService;
    public FakultetService fakultetService;
    public VoenkomatService voenkomatService;

    public EmailService emailService;

    public MilitaryPersonService militaryPersonService;

    public VZvanieService vZvanieService;
    public VSkladService vSkladService;

    private final ResourceLoader resourceLoader;

    @Autowired
    public HomePageController(KafedraService kafedraService, FakultetService fakultetService,
                              VoenkomatService voenkomatService, EmailService emailService,
                              MilitaryPersonService militaryPersonService,
                              VZvanieService vZvanieService, VSkladService vSkladService,
                              ResourceLoader resourceLoader) {
        this.kafedraService = kafedraService;
        this.fakultetService = fakultetService;
        this.voenkomatService = voenkomatService;

        this.emailService = emailService;

        this.militaryPersonService = militaryPersonService;

        this.vZvanieService = vZvanieService;
        this.vSkladService = vSkladService;

        this.resourceLoader = resourceLoader;
    }


    @GetMapping({"/", "/home", "/reservists"})
    public String showHomepage(Model model) {
        List<String> kafList = new ArrayList<>(kafedraService.getAllKafedra().stream().
                map(Kafedra::getKname).sorted().toList());
        kafList.add(0, "-Оберіть кафедру");

        List<String> fakList = new ArrayList<>(fakultetService.getAllFak().stream().
                map(Fakultet::getFname).sorted().toList());
        fakList.add(0, "-Оберіть інститут");

        List<String> voenkomList = new ArrayList<>(voenkomatService.getAllVoenkomat().stream().
                map(Voenkomat::getVoenkomatName).sorted().toList());
        voenkomList.add(0, "-Оберіть ТЦК");

        List<MilitaryPerson> mpList = militaryPersonService.getAllMilitaryPerson();
        List<ReservistAdapter> reservistsList = new LinkedList<>();
        for (MilitaryPerson mp: mpList) {
            try {
                reservistsList.add(new ReservistAdapter(mp));
            }
            catch (Exception exception) {
                exception.printStackTrace();
            }
        }

        model.addAttribute("kafedra_list", kafList);
        model.addAttribute("fakultet_list", fakList);
        model.addAttribute("voenkomat_list", voenkomList);

        model.addAttribute("reservists_list", reservistsList);

        return "reservists-table";
    }

    // FIXME: write method's logic with real file not the simple letter
    @PostMapping("/reservists/send_email")
    public String sendReservistsInfoByEmail(@RequestParam("email") String email) {

        emailService.sendSimpleLetter(email, "Тестовая тема", "Тестовый текст");
//        emailService.sendLetterWithAttachment(email, "Тестовая тема", "Тестовый текст", "classpath:temp/test_file.xlsx");

        return "redirect:/";
    }

    // FIXME: write method's logic with real file not the sample xlsx file
    @ResponseBody
    @GetMapping("/reservists/download")
    public ResponseEntity<byte[]> downloadReservistsAsFile() throws IOException {
        Resource resource = resourceLoader.getResource("classpath:temp/test_file.xlsx");

        Path path = Paths.get(resource.getURI());
        byte[] imageBytes = Files.readAllBytes(path);

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.parseMediaType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"));
        headers.setContentDispositionFormData("attachment", "test_file.xlsx");

        return new ResponseEntity<>(imageBytes, headers, HttpStatus.OK);
    }

    // TODO: write uploadReservistsFromFile method's logic
    @PostMapping("/reservists/upload")
    public String uploadReservistsFromFile(Model model) {
        return "redirect:/";
    }

    @GetMapping("/reservist/contacts/{militaryPersonId}")
    public String showReservistsContacts(Model model, @PathVariable("militaryPersonId") Long militaryPersonId) {
        MilitaryPerson mp = militaryPersonService.getMilitaryPersonById(militaryPersonId);
        ReservistAdapter reservist = new ReservistAdapter(mp);

        model.addAttribute("reservist", reservist);

        return "reservist-contacts";
    }

    @GetMapping("/reservist/military-registration/{militaryPersonId}")
    public String showReservistsMilitaryRegistrationInfo(Model model, @PathVariable("militaryPersonId") Long militaryPersonId) {
        MilitaryPerson mp = militaryPersonService.getMilitaryPersonById(militaryPersonId);
        ReservistAdapter reservist = new ReservistAdapter(mp);

        List<Voenkomat> voenkomatList = voenkomatService.getAllVoenkomat();
        List<VSklad> vSkladList = vSkladService.getAllVSklad();
        List<VZvanie> vZvanieList = vZvanieService.getAllVZvanie();

        model.addAttribute("reservist", reservist);

        model.addAttribute("voenkomatList", voenkomatList);
        model.addAttribute("vSkladList", vSkladList);
        model.addAttribute("vZvanieList", vZvanieList);

        return "reservist-military-registration";
    }

    @GetMapping("/reservist/education/{militaryPersonId}")
    public String showReservistsEducationInfo(Model model, @PathVariable("militaryPersonId") Long militaryPersonId) {
        MilitaryPerson mp = militaryPersonService.getMilitaryPersonById(militaryPersonId);
        ReservistAdapter reservist = new ReservistAdapter(mp);

        model.addAttribute("reservist", reservist);

        return "reservist-education";
    }
}

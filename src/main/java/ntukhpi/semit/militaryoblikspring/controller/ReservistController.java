package ntukhpi.semit.militaryoblikspring.controller;

import ntukhpi.semit.militaryoblikspring.adapters.ReservistAdapter;
import ntukhpi.semit.militaryoblikspring.entity.MilitaryPerson;
import ntukhpi.semit.militaryoblikspring.service.MilitaryPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.LinkedList;
import java.util.List;

@Controller
public class ReservistController {

    @Autowired
    private final MilitaryPersonService militaryPersonService;

    public ReservistController(MilitaryPersonService militaryPersonService) {
        this.militaryPersonService = militaryPersonService;
    }

    // handler method to handle list students and return mode and view
    @GetMapping("/")
    public String listEmployees(Model model) {

        List<MilitaryPerson> mpList = militaryPersonService.getAllMilitaryPerson();
        List<ReservistAdapter> mpAList = new LinkedList<>();
        for (MilitaryPerson mp: mpList){
            mpAList.add(new ReservistAdapter(mp));
        }
        model.addAttribute("military_persons_list", mpAList );
        return "reservistAll";
    }

}

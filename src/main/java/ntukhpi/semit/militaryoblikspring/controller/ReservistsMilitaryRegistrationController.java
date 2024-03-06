package ntukhpi.semit.militaryoblikspring.controller;

import ntukhpi.semit.militaryoblikspring.entity.MilitaryPerson;
import ntukhpi.semit.militaryoblikspring.entity.VSklad;
import ntukhpi.semit.militaryoblikspring.entity.VZvanie;
import ntukhpi.semit.militaryoblikspring.entity.Voenkomat;
import ntukhpi.semit.militaryoblikspring.service.VSkladService;
import ntukhpi.semit.militaryoblikspring.service.VZvanieService;
import ntukhpi.semit.militaryoblikspring.service.VoenkomatService;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import ntukhpi.semit.militaryoblikspring.service.MilitaryPersonService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReservistsMilitaryRegistrationController {
    public MilitaryPersonService militaryPersonService;
    public VoenkomatService voenkomatService;
    public VSkladService vSkladService;
    public VZvanieService vZvanieService;

    @Autowired
    public ReservistsMilitaryRegistrationController(MilitaryPersonService militaryPersonService, VoenkomatService voenkomatService,
                                                    VSkladService vSkladService, VZvanieService vZvanieService) {
        this.militaryPersonService = militaryPersonService;
        this.voenkomatService = voenkomatService;
        this.vSkladService = vSkladService;
        this.vZvanieService = vZvanieService;
    }

    @PostMapping("/reservist/military-registration/{militaryPersonId}/save")
    public String saveOrUpdateMilitaryRegistrationInfo(Model model,
                                                       @PathVariable("militaryPersonId") Long militaryPersonId,
                                                       @RequestParam("vos_input") String vos,
                                                       @RequestParam("prydatnist_select") String prydatnist,
                                                       @RequestParam("tck_input") String tck,
                                                       @RequestParam("familyState_input") String familyState,
                                                       @RequestParam("educationLevel_input") String educationLevel,
                                                       @RequestParam("sklad_select") String sklad,
                                                       @RequestParam("voenZvan_select") String zvanie) {

        try {
            MilitaryPerson militaryPerson = militaryPersonService.getMilitaryPersonById(militaryPersonId);

            militaryPerson.setVos(vos);
            militaryPerson.setVPrydatnist(prydatnist);

            Voenkomat voenkomat = voenkomatService.getVoenkomatByName(tck);
            if (voenkomat == null) {
                Voenkomat v = new Voenkomat();
                v.setVoenkomatName(tck);
                voenkomatService.createVoenkomat(v);
                voenkomat = v;
            }
            militaryPerson.setVoenkomat(voenkomat);

            militaryPerson.setFamilyState(familyState);
            militaryPerson.setEducationLevel(educationLevel);

            VSklad vSklad = vSkladService.getVSkladByName(sklad);
            militaryPerson.setVSklad(vSklad);

            VZvanie vZvanie = vZvanieService.getVzvanieByName(zvanie);
            militaryPerson.setVZvanie(vZvanie);

            militaryPersonService.updateMilitaryPerson(militaryPersonId, militaryPerson);
        }
        catch (Exception exception) {
            exception.printStackTrace();

            model.addAttribute("errorString", "При збереженні даних виникла помилка.");

            return "reservist-military-registration";
        }

        return "redirect:/reservists";
    }
}

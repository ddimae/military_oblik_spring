package ntukhpi.semit.militaryoblikspring.adapters;

import lombok.Getter;
import lombok.Setter;
import ntukhpi.semit.militaryoblikspring.entity.CurrentDoljnostInfo;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;
import ntukhpi.semit.militaryoblikspring.utils.DataFormat;

@Getter
@Setter
public class CurrentDoljnostInfoAdapter {
    private String dateStart;
    private String nakazStart;
    private String commentStart;
    private String dateStop;
    private String nakazStop;
    private String commentStop;

    private String dolghnName;

    private String kafedraName;

    private String statusPrepod;

    public CurrentDoljnostInfoAdapter(Prepod prep) {
        this.dolghnName = prep.getDolghnost().getDolghnName();
        this.kafedraName = prep.getKafedra().getKname();
        CurrentDoljnostInfo d = prep.getPosadaNakazy();
        if (d != null) {
            this.dateStart = DataFormat.localDateToUkStandart(d.getDateStart());
            this.nakazStart = d.getNumNakazStart();
            this.commentStart = d.getCommentStart();
            this.dateStop = DataFormat.localDateToUkStandart(d.getDateStop());
            this.nakazStop = d.getNumNakazStop();
            this.commentStop = d.getCommentStop();
        } else {
            this.dateStart = null;
            this.nakazStart = null;
            this.commentStart = null;
            this.dateStop = null;
            this.nakazStop = null;
            this.commentStop = null;
        }
        //Призначення статусу
        if (prep.getDolghnost() == null) {
            this.statusPrepod = "Посада не визначена";
        } else {
            if (prep.getDolghnost().getDolghnName().equals("не визначена")) {
                this.statusPrepod = "Посада не визначена";
            } else {
                // Якщо є наказ по приймання та звільнення, то ЗВІЛЬНЕНИЙ
                if (dateStart != null && dateStop != null) {
                    this.statusPrepod = "ЗВІЛЬНЕНИЙ";
                } else {
                    this.statusPrepod = "ПРАЦЮЄ";
                }
            }
        }
    }

}
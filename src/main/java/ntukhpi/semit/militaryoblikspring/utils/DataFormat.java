package ntukhpi.semit.militaryoblikspring.utils;

import ntukhpi.semit.militaryoblikspring.adapters.PrepodAdapter;
import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Prepod;

import javax.swing.text.TableView;
import java.text.Collator;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;


/**
 * Клас для збереження методів форматування вхідних даних
 *
 * @author Степанов Михайло
 */
public class DataFormat {
    public static String getPIB(Prepod prepod) {
        return prepod.getFam() + " " + prepod.getImya() + " " + prepod.getOtch();
    }

    public static String getPIB(PrepodAdapter prepod) {
        return prepod.getSurname() + " " + prepod.getName() + " " + prepod.getMidname();
    }

    public static String localDateToUkStandart(LocalDate date) {
        List<String> pieces;

        if (date == null)
            return null;

        try {
            LocalDate.parse(date.toString());
            pieces = new ArrayList<>(Arrays.stream(date.toString().split("-")).toList());
        } catch (Exception e) {
            return null;
        }

        return pieces.get(2) + "." + pieces.get(1) + "." + pieces.get(0);
    }

    public static String getPureValue(String str) {
        if (str == null || str.equals("Не визначено"))
            return null;

        return str;
    }



    public static Collator getUkrCollator() {
        return Collator.getInstance(new Locale("uk", "UA"));
    }
}

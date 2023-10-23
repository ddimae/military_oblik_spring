package ntukhpi.semit.militaryoblikspring.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class MilitaryOblikInfo {
    // Класс создан для того, чтобы в будущем ПРИ НЕОБХОДИМОСТИ
    // реализовать наполнение данных, которые поступают об учете военнообязанных из военкоматов
    // ПОКА НЕ ТРОГАЕМ
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mil_data_id")
    Long id;

    @OneToOne
    @JoinColumn(name = "mp_id",unique = true,nullable = false)
    private MilitaryPerson militaryPerson;


}

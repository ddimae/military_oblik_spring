package ntukhpi.semit.militaryoblikspring.entity.fromasukhpi;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "country")
@Getter
@Setter
@NoArgsConstructor
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "co_id")
    private Long id;

    @Column(length = 40, name="co_name",nullable = false)
    private String countryName;

    @Column(length = 40, name="co_name_e",nullable = false)
    private String countryNameEn;

    @Override
    public String toString() {
        return countryName;
    }
}

package ntukhpi.semit.militaryoblikspring.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "voenkomat")
@Getter
@Setter
@NoArgsConstructor
@ToString
public class Voenkomat {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "voenkamat_id")
    Long id;

    @Column(length = 50,name="voenkomat_name",nullable = false,unique = true)
    private String voenkomatName;

}

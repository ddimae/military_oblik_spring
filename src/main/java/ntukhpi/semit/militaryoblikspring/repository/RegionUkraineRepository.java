package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.RegionUkraine;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegionUkraineRepository extends JpaRepository<RegionUkraine, Long> {
    RegionUkraine findByCountryName(String name);
}
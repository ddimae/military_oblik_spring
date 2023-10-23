package ntukhpi.semit.militaryoblikspring.repository;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country, Long> {
    Country findByCountryName(String countryName);
}
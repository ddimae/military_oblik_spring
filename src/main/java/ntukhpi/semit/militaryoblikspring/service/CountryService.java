package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Country;

import java.util.List;

public interface CountryService {

    Country createCountry(Country counrty);

    Country getCountryById(Long id);

    Country getCountryByName(String name);

    List<Country> getAllCountry();

    Country updateCountry(Long id, Country updatedCountry);

    void deleteCountry(Long id);
}

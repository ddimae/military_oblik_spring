package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.Country;
import ntukhpi.semit.militaryoblikspring.repository.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService{

    private final CountryRepository countryRepository;

    @Autowired
    public CountryServiceImpl(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }

    @Override
    public Country createCountry(Country counrty) {
        return countryRepository.save(counrty);
    }

    @Override
    public Country getCountryById(Long id) {
        return countryRepository.findById(id).orElse(null);
    }

    @Override
    public Country getCountryByName(String name) {
        return countryRepository.findByCountryName(name);
    }

    @Override
    public List<Country> getAllCountry() {
        return countryRepository.findAll();
    }

    @Override
    public Country updateCountry(Long id, Country updatedCountry) {
        Country existingCountry = countryRepository.findById(id).orElse(null);
        if (existingCountry != null) {
            updatedCountry.setId(existingCountry.getId());
            return countryRepository.save(updatedCountry);
        }
        return null;
    }

    @Override
    public void deleteCountry(Long id) {
        countryRepository.deleteById(id);
    }
}

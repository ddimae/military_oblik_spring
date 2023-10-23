package ntukhpi.semit.militaryoblikspring.service;

import ntukhpi.semit.militaryoblikspring.entity.fromasukhpi.RegionKharkiv;

import java.util.List;

public interface RegionKharkivService {

    RegionKharkiv createRegionKharkiv(RegionKharkiv regionKharkiv);

    RegionKharkiv getRegionKharkivById(Long id);

    List<RegionKharkiv> getAllRegionKharkiv();

    RegionKharkiv updateRegionKharkiv(Long id, RegionKharkiv updatedRegionKharkiv);

    void deleteRegionKharkiv(Long id);
}

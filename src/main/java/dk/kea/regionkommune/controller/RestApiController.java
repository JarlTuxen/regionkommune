package dk.kea.regionkommune.controller;

import dk.kea.regionkommune.model.Kommune;
import dk.kea.regionkommune.model.Region;
import dk.kea.regionkommune.repository.KommuneRepository;
import dk.kea.regionkommune.repository.RegionRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class RestApiController {

    RegionRepository regionRepository;

    KommuneRepository kommuneRepository;

    public RestApiController(RegionRepository regionRepository, KommuneRepository kommuneRepository) {
        this.regionRepository = regionRepository;
        this.kommuneRepository = kommuneRepository;
    }

    @GetMapping("/regioner")
    public List<Region> allRegioner() {
        return regionRepository.findAll();
    }

    @GetMapping("/kommuner")
    public List<Kommune> allKommuner(){
        return kommuneRepository.findAll();
    }

}

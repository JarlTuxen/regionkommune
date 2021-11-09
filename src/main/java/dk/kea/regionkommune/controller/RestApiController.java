package dk.kea.regionkommune.controller;

import dk.kea.regionkommune.exceptions.NotFoundException;
import dk.kea.regionkommune.model.Kommune;
import dk.kea.regionkommune.model.Region;
import dk.kea.regionkommune.repository.KommuneRepository;
import dk.kea.regionkommune.repository.RegionRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @GetMapping("/kommunenavn/{navn}")
    public List<Kommune> kommuneByName(@PathVariable String navn) {
        return kommuneRepository.findKommuneByKommuneNavn(navn);
    }

    @GetMapping("/kommuneregid/{regionKode}")
    public List<Kommune> kommuneByRegionId(@PathVariable Integer regionKode) {
        return kommuneRepository.findKommuneByRegionRegionKode(regionKode);
    }

    @GetMapping("/kommunepageparm")
    public ResponseEntity<Map<String, Object>> getPageOfKommuner(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {

        //PageNo and Size
        Pageable paging = PageRequest.of(page, size);
        Page<Kommune> pageKommune = kommuneRepository.findAll(paging);

        List<Kommune> kommuner = pageKommune.getContent();

        if (kommuner.isEmpty())
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);

        Map<String, Object> response = new HashMap<>();
        response.put("kommuner", kommuner);
        response.put("currentPage", pageKommune.getNumber());
        response.put("totalItems", pageKommune.getTotalElements());
        response.put("totalPages", pageKommune.getTotalPages());

        return new ResponseEntity<>(response, HttpStatus.OK);

    }

    @GetMapping("/kommunesortp")
    public ResponseEntity<Map<String, Object>>  getScreeningsSortAndPage (
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "3") int size,
            @RequestParam(defaultValue = "kommuneKode") String sortBy,
            @RequestParam(defalutValue = "asc") String sortOrder
    ){

        //sortOrder and sortBy
        Sort _sortBy = Sort.by(sortBy);
        Sort _sortOrder = Sort.by(sortOrder);
        Sort orders = _sortBy.and(_sortOrder);
        Pageable pagingSort = PageRequest.of(page, size, Sort.by(orders));
        Page<Kommune> pageScreens = kommuneRepository.findAll(pagingSort);
        List<Kommune> kommuner = pageScreens.getContent();

        if (kommuner.isEmpty()) return new ResponseEntity<>(HttpStatus.NO_CONTENT);

        Map<String, Object> response = new HashMap<>();
        response.put("kommuner", kommuner);
        response.put("currentPage", pageScreens.getNumber());
        response.put("totalItems", pageScreens.getTotalElements());
        response.put("totalPages", pageScreens.getTotalPages());

        return new ResponseEntity<>(response, HttpStatus.OK);
    }
}

package dk.kea.regionkommune.controller;

import dk.kea.regionkommune.exceptions.ResourceNotFoundException;
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
import java.util.Optional;

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

    //JPQL
    @GetMapping("/kommunenavn/{navn}")
    public List<Kommune> kommuneByName(@PathVariable String navn) {
        return kommuneRepository.findKommuneByKommuneNavn(navn);
    }

    //JPQL
    @GetMapping("/kommuneregid/{regionKode}")
    public List<Kommune> kommuneByRegionId(@PathVariable Integer regionKode) {
        return kommuneRepository.findKommuneByRegionRegionKode(regionKode);
    }

    //Paging default first page (0 index) with 10 kommuner
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

    //Paging default 3 kommuner each page and first page
    //sort - default ascending - anything but asc as parameter gives descending
    @GetMapping("/kommunesortp")
    public ResponseEntity<Map<String, Object>>  getScreeningsSortAndPage (
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "3") int size,
            @RequestParam(defaultValue = "kommuneKode") String sortBy,
            @RequestParam(defaultValue = "asc") String sortOrder
    ){

        //sortOrder as ternary operator (default is ascending) and sortBy as by-parameter
        Pageable pagingSort = PageRequest.of(page, size, sortOrder.equals("asc")?Sort.by(sortBy):Sort.by(sortBy).descending());
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

    @GetMapping("/regioner/{id}")
    public Region getRegion(@PathVariable int id) {
        return regionRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Region not found with id=" + id));
    }

    @PostMapping(value="/regioner", consumes = "application/json")
    public ResponseEntity<Region> newRegion(@RequestBody Region region) {

        regionRepository.save(region);
        return new ResponseEntity<>(region, HttpStatus.CREATED);
    }

    @GetMapping("/kommuner/{id}")
    public Kommune getKommune(@PathVariable int id) {
        return kommuneRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Kommune not found with id=" + id));
    }

    @PutMapping("/kommuner/{kommuneKode}")
    public ResponseEntity<Kommune> updateKommune(@PathVariable int kommuneKode, @RequestBody Kommune kommune) {
        Kommune _kommune = kommuneRepository.findById(kommuneKode)
                .orElseThrow(() -> new ResourceNotFoundException("Kommune not found with id=" + kommuneKode));

        kommuneRepository.save(kommune);
        return new ResponseEntity<>(kommune, HttpStatus.OK);
    }

}

package dk.kea.regionkommune.repository;

import dk.kea.regionkommune.model.Kommune;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface KommuneRepository extends JpaRepository<Kommune, Integer> {


    //JPQL kommuneNavn

    //JPQL kommune i regionByRegionKode


}


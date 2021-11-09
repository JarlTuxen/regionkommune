package dk.kea.regionkommune.repository;


import dk.kea.regionkommune.model.Region;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RegionRepository extends JpaRepository<Region, Integer> {
}

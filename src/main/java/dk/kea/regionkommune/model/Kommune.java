package dk.kea.regionkommune.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Objects;

@Entity
public class Kommune {

    @Id
    private Integer kommuneKode;
    private String kommuneNavn;
    private String kommuneHref;

    @ManyToOne
    @JoinColumn(name="region_kode")
    @JsonManagedReference
    private Region region;

    public Kommune() {
    }

    public Integer getKommuneKode() {
        return kommuneKode;
    }

    public void setKommuneKode(Integer kommuneKode) {
        this.kommuneKode = kommuneKode;
    }

    public String getKommuneNavn() {
        return kommuneNavn;
    }

    public void setKommuneNavn(String kommuneNavn) {
        this.kommuneNavn = kommuneNavn;
    }

    public String getKommuneHref() {
        return kommuneHref;
    }

    public void setKommuneHref(String kommuneHref) {
        this.kommuneHref = kommuneHref;
    }

    public Region getRegion() {
        return region;
    }

    public void setRegion(Region region) {
        this.region = region;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Kommune kommune = (Kommune) o;
        return Objects.equals(kommuneKode, kommune.kommuneKode);
    }

    @Override
    public int hashCode() {
        return Objects.hash(kommuneKode);
    }

    @Override
    public String toString() {
        return "Kommune{" +
                "kommuneKode=" + kommuneKode +
                ", kommuneNavn='" + kommuneNavn + '\'' +
                ", kommuneHref='" + kommuneHref + '\'' +
                ", region=" + region +
                '}';
    }
}

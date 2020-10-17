package com.viraldisease.springbootmvc.entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name="health_condition")
public class Condition {

    @Id
    @GeneratedValue()
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    private ViralDisease disease;

    private String name;
    private String transmission;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public ViralDisease getDisease() {
        return disease;
    }

    public void setDisease(ViralDisease disease) {
        this.disease = disease;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Condition condition = (Condition) o;
        return id.equals(condition.id) &&
                name.equals(condition.name) &&
                Objects.equals(transmission, condition.transmission) &&
                Objects.equals(disease, condition.disease);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, transmission, disease);
    }
}

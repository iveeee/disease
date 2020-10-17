package com.viraldisease.springbootmvc.repository;

import com.viraldisease.springbootmvc.entity.ViralDisease;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ViralDiseaseRepository extends JpaRepository<ViralDisease, Long> {
}

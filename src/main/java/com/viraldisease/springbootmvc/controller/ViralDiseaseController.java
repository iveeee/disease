package com.viraldisease.springbootmvc.controller;

import com.viraldisease.springbootmvc.entity.ViralDisease;
import com.viraldisease.springbootmvc.service.ViralDiseaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class ViralDiseaseController {

    @Autowired
    private ViralDiseaseService diseaseService;

    @GetMapping("/viral-diseases")
    public List<ViralDisease> getAllViralDisease() {
        return diseaseService.listAll();
    }

    @GetMapping("/viral-diseases/{diseaseId}")
    public ViralDisease getViralDiseaseTypes(@PathVariable int diseaseId) throws Exception {
        Optional<ViralDisease> condition = Optional.ofNullable(diseaseService.get(diseaseId));

        if (!condition.isPresent()) {
            throw new Exception(diseaseId +"not found");
        }
        return diseaseService.get(diseaseId);
    }

    @PostMapping("/viral-disease")
    public ViralDisease addViralDiseaseType(@RequestBody ViralDisease disease) {
        return diseaseService.save(disease);
    }

    @PutMapping("/viral-disease/{diseaseId}")
    public ViralDisease updateViralDiseaseType(@RequestBody ViralDisease disease, @PathVariable long diseaseId) throws Exception {
        Optional<ViralDisease> diseaseResult = Optional.ofNullable(diseaseService.get(diseaseId));
        if (!diseaseResult.isPresent()) {
            throw new Exception(diseaseId +"not found");
        }

        System.out.println(diseaseResult);
        disease.setId(diseaseId);
        return diseaseService.save(disease);
    }

    @DeleteMapping("/viral-disease/{diseaseId}")
    public void deleteViralDiseaseType(@PathVariable int diseaseId) {
        diseaseService.delete(diseaseId);
    }
}

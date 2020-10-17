package com.viraldisease.springbootmvc.service;

import com.viraldisease.springbootmvc.entity.ViralDisease;
import com.viraldisease.springbootmvc.repository.ViralDiseaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ViralDiseaseService {

    @Autowired
    private ViralDiseaseRepository diseaseRepository;

    public List<ViralDisease> listAll() {
        return diseaseRepository.findAll();
    }

    public ViralDisease save(ViralDisease disease) {
        return diseaseRepository.save(disease);
    }

    public ViralDisease get(long id) {
        return diseaseRepository.findById(id).get();
    }

    public void delete(long id) {
        diseaseRepository.deleteById(id);
    }
}

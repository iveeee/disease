package com.viraldisease.springbootmvc.service;

import com.viraldisease.springbootmvc.entity.Condition;
import com.viraldisease.springbootmvc.repository.ConditionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class HealthConditionService {

    @Autowired
    private ConditionRepository repository;

    public List<Condition> listAll() {
        return repository.findAll();
    }

    public Condition save(Condition condition) {
        return repository.save(condition);
    }

    public Condition get(long id) {
        return repository.findById(id).get();
    }

    public void delete(long id) {
        repository.deleteById(id);
    }
}

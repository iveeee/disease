package com.viraldisease.springbootmvc.controller;

import com.viraldisease.springbootmvc.entity.Condition;
import com.viraldisease.springbootmvc.service.HealthConditionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class HealthConditionsController {

    @Autowired
    private HealthConditionService conditionService;

    @GetMapping("/health-conditions")
    public List<Condition> getAllHealthConditions() {
        return conditionService.listAll();
    }

    @GetMapping("/health-condition/{conditionId}")
    public Condition getHealthConditions(@PathVariable int conditionId) throws Exception {
        Optional<Condition> condition = Optional.ofNullable(conditionService.get(conditionId));

        if (!condition.isPresent()) {
            throw new Exception(conditionId +"not found");
        }
        return conditionService.get(conditionId);
    }

    @PostMapping("/health-condition")
    public Condition addHealthCondition(@RequestBody Condition condition) {
        return conditionService.save(condition);
    }

    @PutMapping("/health-condition/{conditionId}")
    public Condition updateHealthCondition(@RequestBody Condition condition, @PathVariable long conditionId) throws Exception {
        Optional<Condition> conditionResult = Optional.ofNullable(conditionService.get(conditionId));
        if (!conditionResult.isPresent()) {
            throw new Exception(conditionId +"not found");
        }

        System.out.println(conditionResult);
        condition.setId(conditionId);
        return conditionService.save(condition);
    }

    @DeleteMapping("/health-condition/{conditionId}")
    public void deleteHealthCondition(@PathVariable int conditionId) {
        conditionService.delete(conditionId);
    }
}

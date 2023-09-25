package ru.nestro.services.impl;

import org.springframework.stereotype.Service;
import ru.nestro.models.Factory;
import ru.nestro.repositories.FactoryRepository;
import ru.nestro.services.FactoryService;

import java.util.List;
import java.util.Optional;

@Service
public class FactoryServiceImpl implements FactoryService {
    private final FactoryRepository factoryRepository;

    public FactoryServiceImpl(FactoryRepository factoryRepository) {
        this.factoryRepository = factoryRepository;
    }
    @Override
    public Factory save(Factory factory) {
        return factoryRepository.save(factory);
    }

    @Override
    public Optional<Factory> getFactory(Long factoryId) {
        return factoryRepository.findById(factoryId);
    }

    @Override
    public Factory delete(Long factoryId) {
        return null;
    }

    @Override
    public List<Factory> findAll() {
        return factoryRepository.findAll();
    }

    @Override
    public void saveByName(String factoryName){
        if (factoryRepository.geIdByName(factoryName).isEmpty()) {
            factoryRepository.saveByName(factoryName);
        }
    }

    @Override
    public Long geIdByName(String name){
        return factoryRepository.geIdByName(name).orElse(null);
    }
}

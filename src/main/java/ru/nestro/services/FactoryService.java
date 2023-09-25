package ru.nestro.services;

import ru.nestro.models.Factory;

import java.util.List;
import java.util.Optional;

public interface FactoryService {
    public Factory save(Factory factory);

    public Optional<Factory> getFactory(Long factoryId);

    public Factory delete(Long factoryId);

    public List<Factory> findAll();
    public void saveByName(String factoryName);
    Long geIdByName(String name);
}

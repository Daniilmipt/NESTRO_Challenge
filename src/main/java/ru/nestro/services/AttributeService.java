package ru.nestro.services;

import ru.nestro.models.Attribute;
import ru.nestro.models.Factory;

import java.util.List;
import java.util.Optional;

public interface AttributeService {
    public Attribute save(Attribute attribute);

    public Optional<Attribute> getAttribute(Long attributeId);

    public void delete(Long attributeId);

    public List<Attribute> findAll();
    public String findAttributePathByFactoryId(Long factoryId, Long attributeId);
    public void saveByName(String name);
    public Long geIdByName(String name);
}

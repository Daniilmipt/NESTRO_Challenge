package ru.nestro.services.impl;

import org.springframework.stereotype.Service;
import ru.nestro.models.Attribute;
import ru.nestro.repositories.AttributeRepository;
import ru.nestro.services.AttributeService;

import java.util.List;
import java.util.Optional;

@Service
public class AttributeServiceImpl implements AttributeService {
    private final AttributeRepository attributeRepository;

    public AttributeServiceImpl(AttributeRepository attributeRepository) {
        this.attributeRepository = attributeRepository;
    }
    @Override
    public Attribute save(Attribute attribute) {
        return attributeRepository.save(attribute);
    }

    public void saveByName(String name) {
        if (this.geIdByName(name) == null) {
            attributeRepository.saveByName(name);
        }
    }

    @Override
    public Optional<Attribute> getAttribute(Long attributeId) {
        return attributeRepository.findById(attributeId);
    }

    @Override
    public void delete(Long attributeId) {
        attributeRepository.deleteById(attributeId);
    }

    @Override
    public List<Attribute> findAll() {
        return attributeRepository.findAll();
    }

    public String findAttributePathByFactoryId(Long factoryId, Long attributeId){
        return attributeRepository.findAttributePathByFactoryId(factoryId, attributeId);
    }

    @Override
    public Long geIdByName(String name){
        return attributeRepository.geIdByName(name).orElse(null);
    }
}

package ru.nestro.services.impl;

import org.springframework.stereotype.Service;
import ru.nestro.models.Attribute;
import ru.nestro.models.FactoryAttribute;
import ru.nestro.repositories.FactoryAttributeRepository;
import ru.nestro.services.FactoryAttributeService;

import java.util.List;
import java.util.Optional;

@Service
public class FactoryAttributeServiceImpl implements FactoryAttributeService {
    private final FactoryAttributeRepository factoryAttributeRepository;

    public FactoryAttributeServiceImpl(FactoryAttributeRepository factoryAttributeRepository) {
        this.factoryAttributeRepository = factoryAttributeRepository;
    }


    @Override
    public FactoryAttribute save(FactoryAttribute factoryAttribute) {
        return factoryAttributeRepository.save(factoryAttribute);
    }

    @Override
    public void saveByRow(Long factory_id, Long attribute_id, String attribute_path){
        if (factoryAttributeRepository.findByAttributeFactoryId(attribute_id, factory_id) == 0) {
            factoryAttributeRepository.saveByRow(factory_id, attribute_id, attribute_path);
        }
    }

    @Override
    public Optional<FactoryAttribute> getFactoryAttribute(Long factoryAttributeId) {
        return factoryAttributeRepository.findById(factoryAttributeId);
    }

    public List<Attribute> getAllAttributesByFactoryId(Long factoryAttributeId){
        return factoryAttributeRepository.findAttributeByFactoryId(factoryAttributeId);
    }

    @Override
    public List<Attribute> findAvailableAttributeByFactoryId(Long factoryAttributeId){
        return factoryAttributeRepository.findAvailableAttributeByFactoryId(factoryAttributeId);
    }

    @Override
    public void delete(Long factoryAttributeId) {
        factoryAttributeRepository.deleteById(factoryAttributeId);
    }

    @Override
    public void deleteByFactoryAttributeId(Long factoryId, Long attributeId){
        factoryAttributeRepository.deleteByFactoryAttributeId(factoryId, attributeId);
    }

    @Override
    public List<FactoryAttribute> findAll() {
        return factoryAttributeRepository.findAll();
    }

    @Override
    public Integer findByAttributeFactoryId(Long attribute_id, Long factory_id){
        return factoryAttributeRepository.findByAttributeFactoryId(attribute_id, factory_id);
    }
}

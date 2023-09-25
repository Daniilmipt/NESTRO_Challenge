package ru.nestro.services;

import ru.nestro.models.Attribute;
import ru.nestro.models.Factory;
import ru.nestro.models.FactoryAttribute;

import java.util.List;
import java.util.Optional;

public interface FactoryAttributeService {
    public FactoryAttribute save(FactoryAttribute factoryAttribute);

    public Optional<FactoryAttribute> getFactoryAttribute(Long factoryAttributeId);

    public void delete(Long factoryAttributeId);

    public List<FactoryAttribute> findAll();

    public List<Attribute> getAllAttributesByFactoryId(Long factoryAttributeId);
    public void saveByRow(Long factory_id, Long attribute_id, String attribute_path);
    public void deleteByFactoryAttributeId(Long factoryId, Long attributeId);
    public List<Attribute> findAvailableAttributeByFactoryId(Long factoryAttributeId);
    public Integer findByAttributeFactoryId(Long attribute_id, Long factory_id);
}

package ru.nestro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.nestro.models.Attribute;
import ru.nestro.models.FactoryAttribute;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
public interface FactoryAttributeRepository  extends JpaRepository<FactoryAttribute, Long> {
    @Query("SELECT distinct a FROM FactoryAttribute as fs inner join " +
            "Attribute as a on a.id = fs.attributeId where fs.factoryId = :factoryId")
    List<Attribute> findAttributeByFactoryId(Long factoryId);

    @Query("SELECT distinct a FROM FactoryAttribute as fs inner join " +
            "Attribute as a on a.id = fs.attributeId where fs.factoryId = :factoryId and fs.deleted=0")
    List<Attribute> findAvailableAttributeByFactoryId(Long factoryId);


    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Transactional
    @Query(value = "insert into factory_attributes(factory_id, attribute_id, attribute_path) values (:factory_id, :attribute_id, :attribute_path)", nativeQuery = true)
    void saveByRow(Long factory_id, Long attribute_id, String attribute_path);

    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Transactional
    @Query(value = "UPDATE factory_attributes SET deleted = 1 where attribute_id = :attribute_id and factory_id = :factory_id", nativeQuery = true)
    void deleteByFactoryAttributeId(Long attribute_id, Long factory_id);

    @Query(value = "select count(*) from factory_attributes where attribute_id = :attribute_id and factory_id = :factory_id", nativeQuery = true)
    Integer findByAttributeFactoryId(Long attribute_id, Long factory_id);
}

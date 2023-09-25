package ru.nestro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.nestro.models.Attribute;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
public interface AttributeRepository  extends JpaRepository<Attribute, Long> {
    @Query("SELECT fs.attributePath FROM FactoryAttribute as fs inner join " +
            "Attribute as a on a.id = fs.attributeId where fs.factoryId = :factoryId and fs.attributeId = :attributeId")
    String findAttributePathByFactoryId(Long factoryId, Long attributeId);


    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query(value = "insert into Attribute(name) values (:name)", nativeQuery = true)
    @Transactional
    void saveByName(String name);

    @Query(value = "select id from Attribute values where name = (:name)", nativeQuery = true)
    Optional<Long> geIdByName(String name);
}

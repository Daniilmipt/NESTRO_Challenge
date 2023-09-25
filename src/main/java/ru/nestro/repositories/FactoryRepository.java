package ru.nestro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.nestro.models.Factory;

import javax.transaction.Transactional;
import java.util.Optional;

@Repository
public interface FactoryRepository extends JpaRepository<Factory, Long> {
    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Transactional
    @Query(value = "insert into factory(name) values (:factoryName)", nativeQuery = true)
    void saveByName(String factoryName);

    @Query(value = "select id from factory where name = (:name)", nativeQuery = true)
    Optional<Long> geIdByName(String name);
}

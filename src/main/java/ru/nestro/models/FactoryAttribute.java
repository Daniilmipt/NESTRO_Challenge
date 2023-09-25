package ru.nestro.models;

import lombok.*;

import javax.persistence.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Entity
@Builder
@Table(name = "factory_attributes")
public class FactoryAttribute {
    @Id
    private Long id;

    @Column(name = "factory_id")
    private Long factoryId;

    @Column(name = "attribute_id")
    private Long attributeId;

    @Column(name = "attribute_path")
    private String attributePath;

    @Column(name = "deleted")
    private Integer deleted;
}

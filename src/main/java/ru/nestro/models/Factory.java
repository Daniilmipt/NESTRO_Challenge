package ru.nestro.models;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Entity
@Builder
@Table(name = "factory")
public class Factory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

//    @ManyToMany
//    @JoinTable(
//            name = "factory_attributes",
//            joinColumns = @JoinColumn(name = "attribute_id"),
//            inverseJoinColumns = @JoinColumn(name = "factory_id")
//    )
//    private List<Factory> factories;
}

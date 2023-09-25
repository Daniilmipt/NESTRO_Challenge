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
@Table(name = "attribute")
public class Attribute {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public Long getId(){
        return id;
    }

    @Column(name = "name")
    private String name;

//    @ManyToMany
//    @JoinTable(
//            name = "factory_attributes",
//            joinColumns = @JoinColumn(name = "factory_id"),
//            inverseJoinColumns = @JoinColumn(name = "attribute_id")
//    )
//    private List<Attribute> attributes;
}

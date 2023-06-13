package com.example.blogger.po;

import lombok.Data;
import net.bytebuddy.matcher.FilterableList;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

//@Data
@Entity
@Table(name = "t_tag")
@Proxy(lazy = false)
@Data
public class Tag {
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    @ManyToMany(mappedBy = "tags",cascade = {CascadeType.MERGE},fetch =FetchType.EAGER)
    private List<Bolg> blogs=new ArrayList<>();

}

package com.example.blogger.po;

import lombok.Data;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

//@Data
@Entity
@Table(name = "t_type")
@Proxy(lazy = false)
@Data
public class Type {
    @Id
    @GeneratedValue
    private Long id;
//    @NotBlank(message = "分类名称不能为空")
    @NotEmpty(message = "分类名称不能为空")
    private String name;

    @OneToMany(mappedBy = "type",fetch=FetchType.EAGER)
    private List<Bolg> blogs=new ArrayList<>();

}

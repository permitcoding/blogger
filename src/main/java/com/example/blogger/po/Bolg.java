package com.example.blogger.po;

import lombok.Data;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//@Data
@Entity
@Table(name="t_blog")
@Proxy(lazy = false)
@Data
public class Bolg{
    @Id
    @GeneratedValue
    private Long id;
    private String title;
    @Lob
    @Basic(fetch = FetchType.LAZY)
    private String content;
    private String firstPicture;
    private String flag;
    private Integer views;
    private boolean appreciation;
    private boolean shareStatement;
    private boolean commenttabled;
    private boolean published;
    private boolean recommend;
    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateTime;

    @ManyToOne
    private Type type;

    @ManyToMany(cascade = {CascadeType.MERGE},fetch=FetchType.EAGER)
    private List<Tag> tags=new ArrayList<>();
    @ManyToOne
    private User user;
    @OneToMany(mappedBy = "blog")
    private List<Comment> comments=new ArrayList<>();

    @Transient
    private String tagIds;

    private String description;

}

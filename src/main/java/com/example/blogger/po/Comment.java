package com.example.blogger.po;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.NestedConfigurationProperty;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//@Data
@Entity
@Table(name = "t_comment")
@Data
//@Component
//@ConfigurationProperties(prefix = "comment")
public class Comment {
    @Id
    @GeneratedValue
    private Long id;
    private String nickname;
    private String email;
    private String content;

    @NestedConfigurationProperty
    private String avatar;

    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;

    @ManyToOne
    private  Bolg blog;

    @OneToMany(mappedBy = "parentComment",fetch=FetchType.EAGER)
    private List<Comment> replyComments=new ArrayList<>();

    @ManyToOne
    private Comment parentComment;

    private boolean adminComment;

}

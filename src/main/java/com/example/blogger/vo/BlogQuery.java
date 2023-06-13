package com.example.blogger.vo;

import lombok.Data;

@Data
public class BlogQuery {
    private String title;
    private Long typeId;
    private boolean recommend;

    public boolean isRecommend() {
        return recommend;
    }

    public void setRecommend(boolean recommend) {
        this.recommend = recommend;
    }


    public String getTitle() {
        return title;
    }

}

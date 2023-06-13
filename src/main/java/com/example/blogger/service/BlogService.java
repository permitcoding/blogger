package com.example.blogger.service;

import com.example.blogger.po.Bolg;
import com.example.blogger.vo.BlogQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

public interface BlogService {
    Bolg getBlog(Long id);
    Page<Bolg> listBlog(Pageable pageable, BlogQuery blog);
    Bolg saveBlog(Bolg blog);
    Bolg updateBlog(Long id,Bolg blog);
    void deleteBlog(Long id);

    List<Bolg> listRecommendBlogTop(Integer size);

    Page<Bolg> listBlog(Pageable pageable);

    Page<Bolg> listBlog(String query,Pageable pageable);

    Bolg getAndConvert(Long id);

    Page<Bolg> listBlog(Long tagId,Pageable pageable);

    Map<String,List<Bolg>> archivesBlog();

    Long countBlog();
}

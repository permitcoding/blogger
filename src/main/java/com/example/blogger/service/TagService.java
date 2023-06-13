package com.example.blogger.service;

import com.example.blogger.po.Tag;
import com.example.blogger.po.Type;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface TagService {
    Tag saveTag(Tag type);

    Tag getTag(Long id);

    Page<Tag> listTag(Pageable pageable);
    Tag updateTag(Long id,Tag type);
    void deleteTag(Long id);

    Tag getTagByName(String name);

    List<Tag> listTag();

    List<Tag> listTag(String ids);

    List<Tag> listTagTop(Integer size);
}

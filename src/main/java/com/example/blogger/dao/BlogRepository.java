package com.example.blogger.dao;

import com.example.blogger.po.Bolg;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface BlogRepository extends JpaRepository<Bolg,Long> , JpaSpecificationExecutor<Bolg> {
    @Query("select b from Bolg  b where b.recommend=true ")
    List<Bolg> findTop(Pageable pageable);


    @Query("select b from  Bolg  b where b.title like ?1 or b.description like ?1")
    Page<Bolg> findByQuery(String query, Pageable pageable);

    @Transactional
    @Modifying
    @Query("update Bolg b set b.views=b.views+1 where  b.id=?1")
    int updateViews(Long id);


    @Query(value = "SELECT date_format(b.update_time, '%Y/%m/%d') AS ym FROM t_blog b GROUP BY ym ORDER BY ym DESC", nativeQuery = true)
    List<String> findGroupYear();

    @Query("select b from Bolg  b where function('date_format',b.updateTime,'%Y/%m/%d')=?1")
    List<Bolg> findByYear(String year);

}
package com.tri.erp.spring.repo;

import com.tri.erp.spring.model.SlEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by TSI Admin on 9/9/2014.
 */
public interface SlEntityRepo extends JpaRepository<SlEntity, Integer>{

    @Transactional
    @Query(value = "SELECT * " +
            "FROM entities " +
            "ORDER BY name ASC", nativeQuery = true)    // kay d mogana ang findAllOrderByNameAsc nga dili @Query
    public List<SlEntity> findAllOrderByNameAsc();
}

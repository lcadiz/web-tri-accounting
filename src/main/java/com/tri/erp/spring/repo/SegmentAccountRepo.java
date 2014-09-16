package com.tri.erp.spring.repo;

import com.tri.erp.spring.model.Account;
import com.tri.erp.spring.model.SegmentAccount;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by TSI Admin on 9/9/2014.
 */
public interface SegmentAccountRepo extends JpaRepository<SegmentAccount, Integer> {
    public List<SegmentAccount> findByAccountId(Integer accountId);

    @Modifying
    @Transactional
    @Query(value = "INSERT INTO segment_accounts  (bus_seg_id, acct_id, acct_code) "
            + "(SELECT :businessSegmentId, :accountId, :segmentAccountCode "
            + "FROM segment_accounts s1 "
            + "WHERE (:businessSegmentId NOT IN "
            + "(SELECT s2.bus_seg_id FROM segment_accounts s2 WHERE s2.acct_id = :accountId)) LIMIT 1)", nativeQuery = true)
    public int saveWithExistenceCheck(@Param("businessSegmentId") Integer businessSegmentId,
                                      @Param("accountId") Integer accountId,
                                      @Param("segmentAccountCode") String segmentAccountCode
    );
}

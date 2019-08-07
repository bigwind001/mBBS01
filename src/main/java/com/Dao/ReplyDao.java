package com.Dao;

import com.Pojo.Reply;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReplyDao {

    int add(@Param("id") int id,@Param("userName") String name,@Param("userTx") String Tx, @Param("userVip") int vip
            ,@Param("reply") String content);
    List<Reply> show(@Param("id") int id);
}

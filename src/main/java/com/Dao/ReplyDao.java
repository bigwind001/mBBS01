package com.Dao;

import com.Pojo.Reply;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReplyDao {

    int add(@Param("id") int id,@Param("userName") String name,@Param("userTx") String Tx, @Param("userVip") int vip
            ,@Param("reply") String content,@Param("postName") String postName,@Param("userId") int userId);
    List<Reply> show(@Param("id") int id);
    List<Reply> nowReply(@Param("userName") String userName);
}

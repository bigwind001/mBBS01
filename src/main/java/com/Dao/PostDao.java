package com.Dao;

import com.Pojo.Post;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Repository
public interface PostDao {

    List<Post> top();
    List<Post> post();
    List<Post> myPost(@Param("userId") int userId);
    Post showPost(@Param("id") int id);
    int send(@Param("userName") String userName,@Param("userTx") String userTx,@Param("userVip") int userVip
            ,@Param("postName") String postName,@Param("content") String content
            ,@Param("userId") int userId
    );
}

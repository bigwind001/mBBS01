package com.Dao;

import com.Pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    String panduan(@Param("userName") String name);
    User login(@Param("userName") String name, @Param("userPassword") String password);
    int register(@Param("admin") String admin,@Param("passWord") String passWord,@Param("sex") boolean sex
                 ,@Param("userTx") String userTx);
    Integer row();
    int changeName(@Param("userId") int userId,@Param("userName") String userName,@Param("sex") boolean sex);
    User show(@Param("userId") int userId);
    int postChange(@Param("userId") int userId,@Param("userName") String userName);
    int update(@Param("userId") int userId,@Param("userPassword") String pass);
    int replySm(@Param("userId") int userId);
    int replyChange(@Param("userId") int userId,@Param("userName") String userName);

}

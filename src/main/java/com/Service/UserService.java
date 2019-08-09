package com.Service;

import com.Pojo.User;

public interface UserService {
    String panduan(String name);
    User login(String name, String password);
    int register(String admin,String passWord,boolean sex,String userTx);
    int changeName(int userId,String userName,boolean sex);
    User show(int userId);
    int postChange(int userId,String userName);
    int update(int userId,String pass);
    int replySm(int userId);
    int replyChange(int userId,String userName);
}

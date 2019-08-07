package com.Service.Impl;

import com.Dao.UserDao;
import com.Pojo.User;
import com.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    UserDao userDao=null;

    @Override
    public String panduan(String name) {
        return userDao.panduan(name);
    }

    @Override
    public User login(String name, String password) {
        User user =userDao.login(name, password);
        return userDao.login(name, password);
    }

    @Override
    public int register(String admin, String passWord,boolean sex,String userTx)
    {
        return userDao.register(admin, passWord,sex,userTx);
    }

    @Override
    public int changeName(int userId, String userName, boolean sex) {
        return userDao.changeName(userId, userName, sex);
    }

    @Override
    public User show(int userId) {
        return userDao.show(userId);
    }

    @Override
    public int postChange(int userId,String userName) {
         return userDao.postChange(userId,userName);
    }

    @Override
    public int update(int userId, String pass) {
        return userDao.update(userId,pass);
    }
}

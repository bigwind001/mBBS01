package com.Service.Impl;

import com.Dao.ReplyDao;
import com.Pojo.Reply;
import com.Service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplyServiceImpl implements ReplyService{
    @Autowired
    ReplyDao replyDao=null;

    @Override
    public int add(int id, String name, String Tx, int vip, String content,String postName,int userId) {
        return replyDao.add(id, name, Tx, vip, content,postName,userId);
    }

    @Override
    public List<Reply> show(int id) {
        return replyDao.show(id);
    }

    @Override
    public List<Reply> nowReply(String userName) {
        return replyDao.nowReply(userName);
    }
}

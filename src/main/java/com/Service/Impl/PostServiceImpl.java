package com.Service.Impl;

import com.Dao.PostDao;
import com.Pojo.Post;
import com.Service.PostService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl implements PostService{

    @Autowired
    PostDao postDao=null;

    @Override
    public List<Post> top() {
        return postDao.top();
    }

    @Override
    public List<Post> post() {
        return postDao.post();
    }

    @Override
    public List<Post> myPost(int userId) {
        return postDao.myPost(userId);
    }

    @Override
    public Post showPost(int id) {
        return postDao.showPost(id);
    }

    @Override
    public int send(String userName, String userTx, int userVip, String postName, String content,int userId) {
        return postDao.send(userName, userTx, userVip, postName, content,userId);
    }

    @Override
    public List<Post> list() {
        return postDao.list();
    }

    @Override
    public List<Post> rowbounds(RowBounds rowBounds) {
        return postDao.rowbounds(rowBounds);
    }

    @Override
    public List<Post> nowReply(int userId) {
        return postDao.nowReply(userId);
    }
}

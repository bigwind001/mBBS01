package com.Service;

import com.Pojo.Post;

import java.util.List;

public interface PostService {

    List<Post> top();
    List<Post> post();
    List<Post> myPost(int userId);
    Post showPost(int id);
    int send(String userName,String userTx,int userVip, String postName, String content,int userId);
}

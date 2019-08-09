package com.Pojo;

import lombok.Data;

@Data
public class Post {
    String userName;
    String postName;
    String userTx;
    int userVip;
    String time;
    boolean top;
    String content;
    int reply;
    Integer id;//自增
    int userId;
}

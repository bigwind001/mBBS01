package com.Service;

import com.Pojo.Reply;

import java.util.List;

public interface ReplyService {
    int add(int id,String name,String Tx,int vip,String content);
    List<Reply> show(int id);
}

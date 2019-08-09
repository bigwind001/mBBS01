package com.Controller;

import com.Pojo.Post;
import com.Service.PostService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PostController {
    private double row=6.0;
    @Autowired
    PostService postService=null;

    @ResponseBody
    @RequestMapping("/mtop")
    public List<Post> top(){
        List<Post> topPost=postService.top();
        return topPost;
    }

    @ResponseBody
    @RequestMapping("/post")
    public List<Post> post(){
        List<Post> Post=postService.post();
        return  Post;
    }
    @ResponseBody
    @RequestMapping("/myView")
    public List<Post> myPost(@RequestParam("userId") int userId){
        List<Post> myPost=postService.myPost(userId);
        return  myPost;
    }

    @ResponseBody
    @RequestMapping("/tPost")
    public Post show(@RequestParam("id") int id, HttpSession session){
       Post showPost=  postService.showPost(id);
//       session.setAttribute("postName",showPost.getPostName());
        return showPost;
    }

    @ResponseBody
    @RequestMapping("/send")
    public int send(@RequestParam("name") String userName,@RequestParam("Tx") String userTx,@RequestParam("vip") int userVip
    ,@RequestParam("title") String postName,@RequestParam("content") String content,@RequestParam("userId") int userId
    ,HttpSession session){

        return  postService.send(userName, userTx, userVip, postName, content,userId);

    }

    @ResponseBody
    @RequestMapping("/bounds")
    public int[] bounds(){
        int i=postService.list().size();
        int b=(int) Math.ceil(i/row);
        int[] a =new int[b];
        for(int j=0;j<a.length;j++) {
            a[j]=j+1;
        }
        return a;
    }

    @ResponseBody
    @RequestMapping("/rowbounds")
    public List<Post> rowbounds(@RequestParam("row") String  row1){
        int row2=Integer.valueOf(row1);
        int i=(int) ((row2-1)*row);
        RowBounds rowBounds=new RowBounds(i,(int) row);
        return postService.rowbounds(rowBounds);
    }

    @ResponseBody
    @RequestMapping("/nowReply")
    public List<Post> nowReply(@RequestParam("userId") int userId){
        List<Post> myPost=postService.nowReply(userId);
        return  myPost;
    }
}

package com.Controller;

import com.Pojo.Reply;
import com.Service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ReplyController {

    @Autowired
    ReplyService replyService=null;

    @ResponseBody
    @RequestMapping("/reply")
    public int reply(@RequestParam("id") int id,@RequestParam("name") String name,@RequestParam("Tx") String Tx
    ,@RequestParam("vip") int vip,@RequestParam("content") String content){
        return replyService.add(id, name, Tx, vip, content);

    }
    @ResponseBody
    @RequestMapping("/showReply")
    public List<Reply> reply(@RequestParam("id") int id){
        List<Reply> Reply=replyService.show(id);
        return  Reply;
    }

}

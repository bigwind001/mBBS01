package com.Controller;

import com.Pojo.User;
import com.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {


    @Autowired
    UserService userService = null;

    @RequestMapping("/login")
    public String login(@RequestParam("name") String name, @RequestParam("password") String password, HttpSession session) {
        //登陆操作
        String i=userService.panduan(name);
        User user=userService.login(name, password);
        if (i!=null){
            if(user!=null){
                session.setAttribute("user",user);
                return "result.jsp";
            }else{
                return "Dresult.jsp";
            }

        }else {
            return "Fresult.jsp";
        }
    }

    @RequestMapping("/register")
    public String register(@RequestParam("admin") String admin, @RequestParam("password") String passWord,
                                 @RequestParam("sex") boolean sex,@RequestParam("userTx") String userTx,
                                 HttpSession session){
        Map<String, String> nn = new HashMap<String, String>();
        if(userService.register(admin, passWord,sex,userTx)>0){
            nn.put("result","注册成功");
            session.setAttribute("result",nn);
        }else{
            nn.put("result","注册失败");
            session.setAttribute("result",nn);
         }
         return "index.jsp";

    }

    @RequestMapping("/change")
    public String changeName (@RequestParam("userId") int userId,@RequestParam("username") String userName
            ,@RequestParam("sex") boolean sex,HttpSession session){
        int i=userService.changeName(userId, userName, sex);
        User user =userService.show(userId);
        session.setAttribute("user",user);
        userService.postChange(userId,userName);
        return "BBSnr.jsp";
    }

    @ResponseBody
    @RequestMapping("/update")
    public int update(@RequestParam("userId") int id,@RequestParam("pass") String pass){
        return  userService.update(id,pass);
    }
}

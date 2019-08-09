package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import com.Pojo.User;
import com.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.Service.UploadService;

import javax.servlet.http.HttpSession;

@Controller
public class UploadController {
		 @Autowired
		 UploadService uploadservice =null;
		 @Autowired
	     UserService   userService=null;

         @RequestMapping("/updateTx")
         public String uploadMultipartFile(MultipartFile file, @RequestParam("userId") int userId
		 , HttpSession session) throws IllegalStateException, IOException {
        	 String fileName=file.getOriginalFilename();
        	 file.getContentType();
        	 String localPath="D:\\File\\";
        	 String uuid =UUID.randomUUID().toString();
        	 String Url="image/"+uuid+fileName;
			 File dest =new File(uuid+fileName);
        	 if(uploadservice.Upload(Url,userId)>0) {
				 User user =userService.show(userId);
				 session.setAttribute("user",user);
				 uploadservice.postChange(userId,Url);
				 uploadservice.replyChange(userId,Url);
        		 file.transferTo(dest);
        	 }else {
        	 }
        	return "BBSnr.jsp";

         }
}

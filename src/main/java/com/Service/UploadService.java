package com.Service;

public interface UploadService {

	 int  Upload(String url,int userId);
	 int postChange(int userId,String Url);
	 int replyChange(int userId,String Url);
	
}

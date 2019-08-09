package com.Service.Impl;

import com.Dao.UploadDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Service.UploadService;

@Service
public class UploadServiceImpl implements UploadService {
	@Autowired
	UploadDao uploadDao =null;
	@Override
	public int Upload(String url,int userId) {
		
		return uploadDao.Upload(url,userId);
	}

	@Override
	public int postChange(int userId, String Url) {
		return uploadDao.postChange(userId,Url);
	}

	@Override
	public int replyChange(int userId, String Url) {
		return uploadDao.replyChange(userId,Url);
	}

}

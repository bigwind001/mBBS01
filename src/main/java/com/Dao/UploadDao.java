package com.Dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UploadDao {

	int Upload(@Param("Url") String url,@Param("userId") int userId);
	int postChange(@Param("userId") int userId,@Param("Url") String url);
	int replyChange(@Param("userId") int userId,@Param("Url") String url);
}

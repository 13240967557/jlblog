package com.jlblog.jlblog.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.jlblog.jlblog.pojo.User;

public interface UserService {
	
	Map<String,Object> selectUserByLogin(String username, String password,HttpServletRequest request);
	
}

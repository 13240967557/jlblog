package com.jlblog.jlblog.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlblog.jlblog.Utils.Md5Util;
import com.jlblog.jlblog.dao.UserMapper;
import com.jlblog.jlblog.pojo.User;
import com.jlblog.jlblog.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	/**贾智源 2018-2-9 14:59:07
	 * 用户登录校验
	 */
	@Override
	public Map<String,Object> selectUserByLogin(String username, String password,HttpServletRequest request) {
		Map<String,Object> map=new HashMap<>();
		User user = new User();
		user.setUsername(username);
		user.setPassword(Md5Util.pwdDigest(password));
		User u = userMapper.selectUserByLogin(user);
		if(u!=null){
			map.put("Status","ok");
			map.put("Text","登陆成功<br /><br />欢迎回来<span id='num'style='padding-left:15px;color:#CCC'>3</span>秒后跳转页面");
			map.put("url","/admin/index");
			request.getSession().setAttribute("user",u);
			
			return map;
		}
		map.put("Status","Error");
		map.put("Erro","账号名或密码有误");
		return map;
	}
	
	
	
	
}

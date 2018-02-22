package com.jlblog.jlblog.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jlblog.jlblog.Utils.ValidatorUtil;
import com.jlblog.jlblog.pojo.User;
import com.jlblog.jlblog.service.UserService;

/**
 * @author 贾智源
 * 2018-2-2 16:32:57
 * 后台管理登录
 */
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	/**贾智源
	 * 获得验证码
	 * 2018-2-2 16:34:47
	 */
	@RequestMapping("/getcode")
	public void validator(HttpSession session,HttpServletResponse response) throws Exception{
		ValidatorUtil.genValidator(session, response);
	}
	
	/**贾智源
	 * 登录校验
	 * 2018-2-9 15:14:46
	 */
	@RequestMapping("/userlogin")
	@ResponseBody
	public Map<String,Object> login(String username, String password, HttpServletRequest request){
		
		System.out.println(username+"---------"+password);
		Map<String, Object> map=null;
		try {
			map = userService.selectUserByLogin(username, password, request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	
	}
	
}

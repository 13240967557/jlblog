package com.jlblog.jlblog.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.service.AdminService;

/**
 * @author 贾智源
 * 2018-2-2 10:47:13
 * 文章管理
 */
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	/**
	 * 贾智源
	 * 2018-2-2 09:56:35
	 * 添加文章详情和文章内容
	 */
	@RequestMapping("/articlevo/add")
	@ResponseBody
	public Map insertArticlevo(ArticleVo avo,String articleDetails){
		Map map = adminService.insertArticleVo(avo);
		return map;
	}
	
}

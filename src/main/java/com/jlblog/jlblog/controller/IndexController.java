package com.jlblog.jlblog.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jlblog.jlblog.Utils.IpUtils;
import com.jlblog.jlblog.dao.ArticleMapper;
import com.jlblog.jlblog.pojo.ArticlePV;
import com.jlblog.jlblog.service.ArticlepvService;




/**
 * 
 * @author 贾智源
 *
 * @date 2018年1月5日 上午10:42:59
 */
@Controller
public class IndexController {
	@Autowired
	private ArticlepvService articlepvService;
	
	@RequestMapping("/")
	public String ind(){
		return "ftl/index";
	}
	
	@RequestMapping("/{str}")
	public String index(@PathVariable String str){
		System.out.println();
		return "ftl/"+str;
	}
	
	@RequestMapping("/admin/{str}")
	public String adminIndex(@PathVariable String str){
		return "admin/"+str;
	}
	
	@RequestMapping("/getip")
	@ResponseBody
	public String getRemoteHost(HttpServletRequest request,String id){
		String ip = IpUtils.getRemoteHost(request);
		articlepvService.insertArticlePV(id,ip);
		return ip; 
	}
	
}

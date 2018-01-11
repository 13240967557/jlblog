package com.jlblog.jlblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;



/**
 * 
 * @author 贾智源
 *
 * @date 2018年1月5日 上午10:42:59
 */
@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String ind(){
		return "ftl/index";
	}
	
	@RequestMapping("/{str}")
	public String index(@PathVariable String str){
		System.out.println();
		return "ftl/"+str;
	}
	
	
	
}

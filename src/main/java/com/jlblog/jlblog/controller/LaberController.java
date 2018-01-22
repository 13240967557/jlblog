package com.jlblog.jlblog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jlblog.jlblog.pojo.Laber;
import com.jlblog.jlblog.service.LaberService;
import com.sun.javafx.collections.MappingChange.Map;

/**
 * 文章标签
 * @author 贾智源
 * 2018年1月22日10:25:14
 */
@Controller
public class LaberController {
	
	@Autowired
	private LaberService laberService;
	
	@RequestMapping("/indexlaber")
	@ResponseBody
	public List<Laber> indexLaber(){
		List<Laber> laberlist = laberService.selectIndexLaber();
		return laberlist;
	}
	
	@RequestMapping("/tagarticle")
	@ResponseBody
	public Map tagarticle(){
		
		return null;
	}
	
}

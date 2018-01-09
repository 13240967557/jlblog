package com.jlblog.jlblog.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jlblog.jlblog.pojo.Article;
import com.jlblog.jlblog.service.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	/**
	 * 根据分类id查询文章
	 * @param id
	 * @return
	 * 
	 */
	@RequestMapping("/getActicleByClassify")
	@ResponseBody
	public Map getActicleByClassify(String id){
		Map map = new HashMap();
		if (id==null || id.equals("")) {
			map.put("error", 0);
			return map;
		}
		List<Article> articleList = articleService.getActicleByClassify(id);
		
		map.put("error", 200);
		map.put("msg", articleList);
		return map;
	}
	
}

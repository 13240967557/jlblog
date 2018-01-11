package com.jlblog.jlblog.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jlblog.jlblog.pojo.Article;
import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;
import com.jlblog.jlblog.service.ArticleService;

@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	/**
	 * 根据分类id查询文章
	 * @param id
	 * @return
	 */
	@RequestMapping("/article/getActicleByClassify")
	@ResponseBody
	public Map getActicleByClassify(String classify){
	
		Map map = new HashMap();
		if (classify==null || classify.equals("")) {
			map.put("error", 0);
			map.put("msg", "参数为空，无法获取！");
			return map;
		}
		List<ArticleVo> articleList = articleService.getActicleByClassify(classify);
		if (articleList==null) {
			map.put("error", 0);
			map.put("msg", "查询数据失败！请重试！");
			return map;
		}
		map.put("error", 200);
		map.put("msg", articleList);
		return map;
	}
	
	@RequestMapping("/article/getArticleById")
	@ResponseBody
	public Map getArticleById(String id){
		
		Map map = new HashMap();
		if (id==null || id.equals("")) {
			map.put("error", 0);
			map.put("msg", "参数为空，无法获取！");
			return map;
		}
		List<ArticleVo> list = articleService.getArticleById(id);
		if (list==null) {
			map.put("error", 0);
			map.put("msg", "查询数据失败！请重试！");
			return map;
		}
		map.put("error", 200);
		map.put("msg", list.get(0));
		
		return map;
	}
	
}

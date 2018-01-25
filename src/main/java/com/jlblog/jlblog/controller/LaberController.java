package com.jlblog.jlblog.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;
import com.jlblog.jlblog.service.LaberService;
import com.sun.org.apache.regexp.internal.recompile;

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
	public Map tagarticle(String id){
		Map data = new HashMap();
		
		List<ArticleVo> artList = laberService.selectArticleByTag(id);
		if(artList.size()==0||artList==null){
			data.put("stats", "300");
			data.put("msg", "亲！ 没有相关文章");
			return data;
		}
		data.put("stats", "200");
		data.put("data", artList);
		
		return data;
	}
	
	/**000 
	 * 贾智源
	 * 2018年1月24日09:36:41
	 * 模糊查询 回显数据
	 * 
	 * 这里出现  一个 问题 通过网络调用远程数据库
	 */
	@RequestMapping("/laber/search")
	public String search(ArticleVo av, Model model){
		
		//av.setTitle("看");
		
		List<ArticleVo> avlist = laberService.selectLikeArticle(av);
		model.addAttribute("avlist", avlist);
		return "ftl/searchblog";
	}
	
}

package com.jlblog.jlblog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlblog.jlblog.dao.ArticleMapper;
import com.jlblog.jlblog.pojo.Article;
import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;
import com.jlblog.jlblog.service.ArticleService;

/**
 * 文章service
 * @author 用心
 * @date 2018年1月8日
 */
@Service
public class ArticleServiceImpl implements ArticleService{

	@Autowired
	private ArticleMapper articleMapper;
	
	/**
	 * 根据分类id查询文章
	 */
	@Override
	public List<ArticleVo> getActicleByClassify(String classify) {
		
		List<ArticleVo> articleList = articleMapper.getArticleByClassify(classify);
		if (articleList.size()<=0) {
			
			return null;
		}else {
			//查询标签
			for (ArticleVo article : articleList) {
				List<Laber> laList = articleMapper.getLaberByAid(article.getId());
				article.setLaList(laList);
			}
		}
		return articleList;
	}

	/**
	 * 根据文章id查询文章内容/标签
	 */
	@Override
	public List<ArticleVo> getArticleById(String id) {
		
		//查询文章/内容
		List<ArticleVo> list = articleMapper.getArticleById(id);
		if (list.size()<=0) {
			
			return null;
		}else {
			//查询标签
			for (ArticleVo articleVo : list) {
				List<Laber> laList = articleMapper.getLaberByAid(articleVo.getId());
				articleVo.setLaList(laList);
			}
		}
		return list;
	}

}

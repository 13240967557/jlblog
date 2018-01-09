package com.jlblog.jlblog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlblog.jlblog.dao.ArticleMapper;
import com.jlblog.jlblog.pojo.Article;
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
	public List<Article> getActicleByClassify(String id) {
		
		List<Article> articleList = articleMapper.getArticleByClassify(id);
		return articleList;
	}

}

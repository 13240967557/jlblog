package com.jlblog.jlblog.service;

import java.util.List;

import com.jlblog.jlblog.pojo.Article;
import com.jlblog.jlblog.pojo.ArticleVo;

public interface ArticleService {

	List<ArticleVo> getActicleByClassify(String classify);

	List<ArticleVo> getArticleById(String id);
	
	List<ArticleVo> getIndexArticle();
	
}

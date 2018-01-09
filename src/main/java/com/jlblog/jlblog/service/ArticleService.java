package com.jlblog.jlblog.service;

import java.util.List;

import com.jlblog.jlblog.pojo.Article;

public interface ArticleService {

	List<Article> getActicleByClassify(String id);
	
}

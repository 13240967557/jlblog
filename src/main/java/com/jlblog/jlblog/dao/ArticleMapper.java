package com.jlblog.jlblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jlblog.jlblog.pojo.Article;

/**
 * 文章mapper
 * @author 用心
 * @date 2018年1月8日
 */
@Mapper
public interface ArticleMapper {

	List<Article> getArticleByClassify(String id);
	
}

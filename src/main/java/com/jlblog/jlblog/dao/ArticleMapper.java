package com.jlblog.jlblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;

/**
 * 文章mapper
 * @author 用心
 * @date 2018年1月8日
 */
@Mapper
public interface ArticleMapper {

	List<ArticleVo> getArticleByClassify(String classify);

	List<ArticleVo> getArticleById(String id);

	List<Laber> getLaberByAid(String id);

	List<ArticleVo> getCorrelationArticle(String classify);
	
	List<ArticleVo> getIndexArticle();
	
}

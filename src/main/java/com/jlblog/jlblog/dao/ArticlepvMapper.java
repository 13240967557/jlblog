package com.jlblog.jlblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jlblog.jlblog.pojo.ArticlePV;
import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;

/**
 * 文章浏览量mapper
 * @author 瑬蒗的鱼
 * @date 2018年1月17日15:57:34
 */
@Mapper
public interface ArticlepvMapper {

	void insertPV(ArticlePV apv);
	
	ArticlePV getArticlePVByapv(ArticlePV apv);
}

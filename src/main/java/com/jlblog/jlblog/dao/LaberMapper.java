package com.jlblog.jlblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;

/**
 * 标签service
 * @author 瑬蒗的鱼
 * @date 2018年1月22日09:58:45
 */
@Mapper
public interface LaberMapper {
	
	List<Laber> selectIndexLaber();
	
	List<ArticleVo> selectArticleByTag(String id);
	
}

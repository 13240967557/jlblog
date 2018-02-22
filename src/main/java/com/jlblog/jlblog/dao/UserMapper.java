package com.jlblog.jlblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jlblog.jlblog.pojo.Article;
import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;
import com.jlblog.jlblog.pojo.User;

/**
 * 文章mapper
 * @author 用心
 * @date 2018年1月8日
 */
@Mapper
public interface UserMapper {

	User selectUserByLogin(User user);
	
}

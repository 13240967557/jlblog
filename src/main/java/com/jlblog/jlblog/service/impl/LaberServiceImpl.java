package com.jlblog.jlblog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlblog.jlblog.dao.ArticleMapper;
import com.jlblog.jlblog.dao.LaberMapper;
import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laber;
import com.jlblog.jlblog.service.LaberService;
/**
 * 文章标签
 * @author 瑬蒗的鱼
 * 2018年1月22日10:08:48
 */
@Service
public class LaberServiceImpl implements LaberService {
	
	@Autowired
	private LaberMapper laberMapper;
	
	@Autowired
	private ArticleMapper articleMapper;
	
	@Override
	public List<Laber> selectIndexLaber() {
		List<Laber> laberlist = laberMapper.selectIndexLaber();
		return laberlist;
	}

	@Override
	public List<ArticleVo> selectArticleByTag(String id) {
		List<ArticleVo> artlist = laberMapper.selectArticleByTag(id);
		return artlist;
	}

}

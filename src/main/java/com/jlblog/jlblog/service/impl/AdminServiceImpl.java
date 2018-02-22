package com.jlblog.jlblog.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlblog.jlblog.dao.ArticleMapper;
import com.jlblog.jlblog.dao.LaberarticleMapper;
import com.jlblog.jlblog.pojo.ArticleVo;
import com.jlblog.jlblog.pojo.Laberarticle;
import com.jlblog.jlblog.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private ArticleMapper articleMapper;
	
	@Autowired
	private LaberarticleMapper laberarticleMapper;
	
	/**
	 * 贾智源
	 * 2018-2-2 11:42:41
	 * 添加文章
	 */
	@Override
	public Map insertArticleVo(ArticleVo avo) {
		Map map = new HashMap();
		try {
			//完善信息
			avo.setId(UUID.randomUUID().toString().replaceAll("-", ""));
			avo.setBrowsenumber("0");
			//添加文章
			articleMapper.insertarticle(avo);
			//添加文章详情
			articleMapper.insertArticledetails(avo);
			//关联文章所属标签
			List<String> laberids = avo.getLaberids();
			for (String lid : laberids) {
				Laberarticle la = new Laberarticle();
				la.setAid(avo.getId());
				la.setLid(lid);
				laberarticleMapper.insertLaberarticle(la);
			}
			map.put("q", 1);
		} catch (Exception e) {
			map.put("q", 2);
		}
		return map;
	}
	
	
	
}

package com.jlblog.jlblog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlblog.jlblog.dao.ArticleMapper;
import com.jlblog.jlblog.dao.ArticlepvMapper;
import com.jlblog.jlblog.pojo.ArticlePV;
import com.jlblog.jlblog.service.ArticlepvService;
/**
 * 
 * @author 贾智源
 * 2018年1月17日16:19:46
 */
@Service
public class ArticlepvServiceImpl implements ArticlepvService {
	
	@Autowired
	private ArticlepvMapper articlepvMapper;
	
	@Autowired
	private ArticleMapper articleMapper;
	
	@Override
	public void insertArticlePV(String id, String ip) {
		ArticlePV apv1 = new ArticlePV();
		apv1.setId(id);
		apv1.setIp(ip);
		ArticlePV apv = articlepvMapper.getArticlePVByapv(apv1);
		if(apv==null){
			articlepvMapper.insertPV(apv1);
			articleMapper.updateArticleBrowsenumber(id);
		}
	}

}

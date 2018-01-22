package com.jlblog.jlblog.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlblog.jlblog.dao.LaberMapper;
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
	
	@Override
	public List<Laber> selectIndexLaber() {
		List<Laber> laberlist = laberMapper.selectIndexLaber();
		return laberlist;
	}

}

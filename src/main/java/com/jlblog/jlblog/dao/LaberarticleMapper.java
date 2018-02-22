package com.jlblog.jlblog.dao;

import org.apache.ibatis.annotations.Mapper;

import com.jlblog.jlblog.pojo.Laberarticle;

@Mapper
public interface LaberarticleMapper {
	
	void insertLaberarticle(Laberarticle laberarticle);
	
}

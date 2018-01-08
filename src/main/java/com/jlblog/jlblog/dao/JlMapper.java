package com.jlblog.jlblog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jlblog.jlblog.pojo.Jl;
/**
 * 
 * @author 贾智源
 *
 * @date 2018年1月5日 下午3:32:03
 */
@Mapper
public interface JlMapper {
	
	List<Jl> select();
	
}

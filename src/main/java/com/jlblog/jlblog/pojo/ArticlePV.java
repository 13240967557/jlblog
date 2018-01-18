package com.jlblog.jlblog.pojo;

import org.apache.ibatis.type.Alias;

/**
 * 文章浏览量表
 * @author 瑬蒗的鱼
 * @date 2018年1月17日16:01:08
 */
@Alias(value = "ArticlePV")
public class ArticlePV {

	private String id;
	private Long pvcount;
	private String ip;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Long getPvcount() {
		return pvcount;
	}
	public void setPvcount(Long pvcount) {
		this.pvcount = pvcount;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	
	
	
}

package com.jlblog.jlblog.pojo;

import java.util.ArrayList;
import java.util.List;

public class ArticleVo extends Article {

	private String articleDetails;//文章内容
	private List<Laber> laList = new ArrayList<Laber>();//标签集合
	private List<ArticleVo> coList = new ArrayList<ArticleVo>();//相关文章集合
	private List<String> laberids;
	
	public List<ArticleVo> getCoList() {
		return coList;
	}
	public void setCoList(List<ArticleVo> coList) {
		this.coList = coList;
	}
	public List<Laber> getLaList() {
		return laList;
	}
	public void setLaList(List<Laber> laList) {
		this.laList = laList;
	}
	public List<String> getLaberids() {
		return laberids;
	}
	public void setLaberids(List<String> laberids) {
		this.laberids = laberids;
	}
	public String getArticleDetails() {
		return articleDetails;
	}
	public void setArticleDetails(String articleDetails) {
		this.articleDetails = articleDetails;
	}
	
	
}

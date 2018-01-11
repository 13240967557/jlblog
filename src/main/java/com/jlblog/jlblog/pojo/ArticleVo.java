package com.jlblog.jlblog.pojo;

import java.util.ArrayList;
import java.util.List;

public class ArticleVo extends Article {

	private String articleDetails;//文章内容
	private List<Laber> laList = new ArrayList<Laber>();
	
	
	public List<Laber> getLaList() {
		return laList;
	}
	public void setLaList(List<Laber> laList) {
		this.laList = laList;
	}
	public String getArticleDetails() {
		return articleDetails;
	}
	public void setArticleDetails(String articleDetails) {
		this.articleDetails = articleDetails;
	}
	
	
}

package com.jlblog.jlblog.pojo;
/**
 * 文章表
 * @author 用心
 * @date 2018年1月8日
 */
public class Article {

	private String id;
	private String title;//标题
	private String intro;//简介
	private String createtime;//创建时间
	private String browsenumber;//浏览量
	private String commentnumber;//评论量
	private String articleimg;//图片
	private String classify;//分类
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getBrowsenumber() {
		return browsenumber;
	}
	public void setBrowsenumber(String browsenumber) {
		this.browsenumber = browsenumber;
	}
	public String getCommentnumber() {
		return commentnumber;
	}
	public void setCommentnumber(String commentnumber) {
		this.commentnumber = commentnumber;
	}
	public String getArticleimg() {
		return articleimg;
	}
	public void setArticleimg(String articleimg) {
		this.articleimg = articleimg;
	}
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	
	
}

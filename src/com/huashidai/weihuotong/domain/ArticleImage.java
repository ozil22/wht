package com.huashidai.weihuotong.domain;

import java.io.Serializable;


/**
 * 文章
 * @author ozil
 *
 */
public class ArticleImage implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 792746446580572502L;
	private Long id;
	private String src;//图片路径
	//关联文章
	private Article article;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	@Override
	public String toString() {
		return "ArticleImage [id=" + id + ", src=" + src + ", article="
				+ article + "]";
	}
}

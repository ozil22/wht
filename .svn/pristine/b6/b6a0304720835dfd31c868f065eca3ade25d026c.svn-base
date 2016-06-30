package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 文章的评论 
 * @author ozil
 *
 */
public class ArticleComment implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4496714367029186151L;
	private Long id;
	private String content;//评论内容
	private Date commentTime; //评论时间
	private Store store;//评论人(多对一)
	private Article article;//评论的文章(多对一)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	@Override
	public String toString() {
		return "ArticleComment [id=" + id + ", content=" + content
				+ ", commentTime=" + commentTime + ", store=" + store
				+ ", article=" + article + "]";
	}
}

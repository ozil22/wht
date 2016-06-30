package com.huashidai.weihuotong.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 文章
 * 
 * @author ozil
 *
 */
public class Article implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6515219308815149349L;
	private Long id;
	private String name;// 文章标题
	private String content;// 文章内容
	private Date time;// 发布时间
	private Integer commentNum = 0;// 回复数
	private ArticleType articleType;// 关联的栏目(多对一)
	private Store store;// 发布的商家
	
	// 展示图片
	private List<ArticleImage> articleImages;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(Integer commentNum) {
		this.commentNum = commentNum;
	}

	public ArticleType getArticleType() {
		return articleType;
	}

	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}
	
	public List<ArticleImage> getArticleImages() {
		return articleImages;
	}

	public void setArticleImages(List<ArticleImage> articleImages) {
		this.articleImages = articleImages;
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", name=" + name + ", content=" + content
				+ ", time=" + time + ", commentNum=" + commentNum
				+ ", articleType=" + articleType + ", store=" + store + "]";
	}
}

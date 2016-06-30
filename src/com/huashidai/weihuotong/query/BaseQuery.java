package com.huashidai.weihuotong.query;

import java.text.SimpleDateFormat;

public class BaseQuery {
	
		public SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
		private Integer pageSize=10;// 如果每页长度设置为-1，那么就不分页
		private Integer currentPage=1;
	

		public Integer getPageSize() {
			return this.pageSize;
		}
		public void setPageSize(Integer pageSize) {
			this.pageSize = pageSize;
		}
		public Integer getCurrentPage() {
			return currentPage;
		}
		public void setCurrentPage(Integer currentPage) {
			this.currentPage = currentPage;
		}
		
		
		//算出每页第一条是总数据中的第几条数据
		public Integer getStart(){
			return (this.getCurrentPage()-1)*this.getPageSize();
		}
		
		// EasyUI分页组件兼容
		public void setPage(Integer page) {
			this.currentPage = page;
		}
		public void setRows(Integer rows) {
			this.pageSize = rows;
		}
		public int getPage() {
			return this.getCurrentPage();
		}
		public int getRows(Integer rows) {
			return this.getPageSize();
		}
		
		

		public BaseQuery(Integer pageSize, Integer currentPage) {
			this.pageSize = pageSize;
			this.currentPage = currentPage;
		}

		public BaseQuery() {
		}
		@Override
		public String toString() {
			return pageSize + "," + currentPage+",";
		}

}

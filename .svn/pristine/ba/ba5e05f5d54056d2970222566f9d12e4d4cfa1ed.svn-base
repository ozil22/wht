<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<link rel="stylesheet" href="css/common.css">
<script type="text/javascript">
$(function(){
	//缓存要用到的组件
	var recommendationDataGrid = $("#recommendationDataGrid");//数据表格
	
   //数据表格
    recommendationDataGrid.datagrid({
    	fit:true,
		border:false,
		url:'recommendation/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		nowrap:false,
		pagination:true,
		pageSize:20,
		pageList:[5,10,20,50]
	});
	
});

</script>
	<table id="recommendationDataGrid" style="width: 600px;height: 300px;">
		<!--
			定义表格的表头 
		 -->
		<thead>
			<tr>
				<th align="center" field="recommendationType"   width="15" data-options="formatter:formatName">类型</th>
				<th align="center" field="content" data-options="formatter:formatTitle" width="100" >内容</th>
				<th align="center" field="user"   width="15" data-options="formatter:formatNickname">反馈人</th>
				<th align="center" field="contact"   width="15" >联系方式</th>
				<th align="center" field="time"   width="20" data-options="formatter:formatDateTime">时间</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
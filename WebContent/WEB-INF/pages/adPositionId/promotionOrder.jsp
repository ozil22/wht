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
	var promotionOrderStateCombobox = $("#promotionOrderStateCombobox");//状态下拉列表
	var promotionOrderNumSearchbox = $("#promotionOrderNumSearchbox");//订单号搜索框
	var promotionOrderDataGrid = $("#promotionOrderDataGrid");//数据表格
	var promotionOrder_searchForm = $("#promotionOrder_searchForm");//参数表单
	//初始化组件
	promotionOrderDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'promotionOrder/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		//rownumbers:true,
		pagination:true,
		pageSize:20,
		pageList:[5,10,20,50],
		toolbar:'#promotionOrder_toolbar'
	});
	
	promotionOrderNumSearchbox.searchbox({
		prompt:'订单号',
		searcher:function(){ 
			var paramObj = {};
			var paramArr = promotionOrder_searchForm.serializeArray();
			 $.each(paramArr,function(i,data){
				 paramObj[data.name] = data.value;
			 }); 
			promotionOrderDataGrid.datagrid("load",paramObj);
		}
	});
	
});
</script>
	<!-- 数据表格 -->
	<table id="promotionOrderDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="orderNum" width="30" align="center">订单号</th>
				<th field="store" data-options="formatter:formatName"
					width="20" align="center">购买用户</th>
				<th field="totalPrice" width="15" align="center">订单总价</th>
				<th field="payPrice" width="15" align="center">实际支付</th>
				<th field="buyTime" data-options="formatter:formatDateTime"
					width="30" align="center">下单时间</th>
				<th field="state" data-options="formatter:formatPromotionState"
					width="15" align="center">状态</th>
			</tr>
		</thead>
	</table>

	<!-- 工具条和搜索条件 -->
	<div id="promotionOrder_toolbar">
		<div>
			<form method="post" id="promotionOrder_searchForm">
			   	<select class="easyui-combobox" name="state" style="width: 100px" prompt='订单状态'>
					<option value="-99" ></option>
					<option value="0">待付款</option>
					<option value="1">完成</option>
				</select> 
				<input class="easyui-textbox" name="storeName" style="width: 100px" prompt='购买用户'/> 
				<input id="promotionOrderNumSearchbox" name="orderNum" style="width: 100px" />
			</form>
		</div>
	</div>

</body>
</html>
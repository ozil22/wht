<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统日志</title>
</head>
<body>
	<script type="text/javascript">
	
	$(function(){
		//缓存要用到的组件
		var systemLogDataGrid = $("#systemLogDataGrid");//系统日志数据表格
		var systemLogQuery = $("#systemLogQuery");//高级查询条件表单
		//初始化组件
		systemLogDataGrid.datagrid({//初始化数据表格
			fit:true, 
			border:false,
			url:'/systemLog/query',//数据地址
			singleSelect:true,
			fitColumns:true,
			striped:true,//隔行换色
			nowrap:false,
			rownumbers:true,
			pagination:true,//分页条
			pageSize:20,
			pageList:[5,10,20,50],
			toolbar:'#systemLog_toolbar'//工具条
		});
		//创建cmdSystemLog管理所有操作函数
		var cmdSystemLog={
			//高级查询
			systemLog_query:function(){
				//把参数封装成一个json对象传到前台
				 systemLogDataGrid.datagrid('load',systemLogQuery.serializeJson()); 
			},
			//显示所有
			systemLog_refreshAll:function(){
				//清空查询表单
				systemLogQuery.form("clear");
				//传人空的参数加载数据
				systemLogDataGrid.datagrid('load',{}); 
				
			}
		};
		//对页面上所有按钮做一次统一的监听
		$("a[data-cmd]").on("click",function(){
			//获取data-cmd属性的值
			var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
			if (cmd) {
				cmdSystemLog[cmd]();//执行对应的方法
			}
		});
	});
	</script>
	<!-- 数据表格 -->
	<table id="systemLogDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th align="center" field="description"    width="20">操作信息</th>
				<th align="center" field="params"    width="20">参数</th>
				<th align="center" field="opTime" data-options="formatter:formatDateTime"  width="20">操作时间</th>
				<th align="center" field="opUser"   width="15">操作用户</th>
				<th align="center" field="opIP"    width="15">IP</th>
				<th align="center" field="function"    width="60">详细信息</th>
			</tr>
		</thead>
	</table>
	<!-- 工具条 -->
	<div id="systemLog_toolbar">
    	<form id="systemLogQuery">
	 		<div>
            	 <input class="easyui-datebox" name="startTime" style="width:100px">
       	   		-<input class="easyui-datebox" name="endTime" style="width:100px">
            	 <a href="#" data-cmd="systemLog_query" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
      		 </div>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<script type="text/javascript">
$(function(){
	//缓存要用到的组件
	var apkDataGrid = $("#apkDataGrid");//数据表格
	var apkDialog = $("#apkDialog");//录入窗口
	var apkForm = $("#apkForm");//录入表单
	   
	//初始化组件
	apkDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'apk/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		rownumbers:true,
		pagination:true,
		pageSize:10,
		pageList:[5,10,20,50],
		toolbar:'#apk_toolbar'
	});
	
	//创建cmdType管理所有操作函数
	var cmdType={
		//新增
		apk_create:function(){
			// 1.清空对话框数据
			apkForm.form("clear");
			// 2.打开添加对话框
			apkDialog.dialog("open");
		},

		//保存
		apk_save:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			apkForm.form("submit",{
				url:"/apk/save",
				success:function(data){ 
					data = $.parseJSON(data);//转为json
					if(data.success){
						apkDialog.dialog("close");
						$.messager.alert("温馨提示",data.message,"info",function(){
							// 刷新表格
							apkDataGrid.datagrid("reload");
						});
					}else{
						$.messager.alert("温馨提示",data.message,"info");
					}
				}
			});
		},
		//取消
		apk_cancel:function(){
			apkDialog.dialog("close");
		},

		//删除
		apk_del:function(){
			// 1.获取选中行信息
			var rowData = apkDataGrid.datagrid("getSelected");
			console.debug(rowData);
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("温馨提示","是否确认删除【"+rowData.name+"】?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/apk/delete",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								apkDataGrid.datagrid("reload");
							});
						}else{
							$.messager.alert("温馨提示",data.message,"error");
						}
					},"json");
				}
			});
			
		}, 

		//刷新
		apk_refresh:function(){
			apkDataGrid.datagrid("reload");
		},

	};
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			cmdType[cmd]();//执行对应的方法
		}
	});
});
</script>
	<!-- 数据表格 -->
	<table id="apkDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="image" data-options="formatter:formatImage" 
				width="20" align="center">二维码</th>
				<th field="name" width="10" align="center">名称</th>
				<th field="version" width="10" align="center">版本</th>
				<th field="time" data-options="formatter:formatDateTime" width="10"
					align="center">上传时间</th>
				<th field="src" width="5" data-options="formatter:formatFile" align="center">下载</th>
				<th field="note" width="30" align="center">备注</th>
			</tr>
		</thead>
	</table>

	<!-- 工具条和搜索条件 -->
	<div id="apk_toolbar">
		<div>
			<form method="post" id="apk_searchForm">
				<a class="easyui-linkbutton" iconCls="icon-add"  data-cmd="apk_create">添加</a> 
				<a class="easyui-linkbutton" iconCls="icon-remove" data-cmd="apk_del">删除</a> 
				<a class="easyui-linkbutton" iconCls="icon-reload" data-cmd="apk_refresh">刷新</a> 
			</form>
		</div>
	</div>

	<!-- 录入窗口 -->
	<div id="apkDialog" class="easyui-dialog" style="width: 350px;height: 280px;"
	data-options="title:'上传安装包',modal:true,iconCls:'icon-edit',buttons:'#apk_bs',closed:true">
			<form id="apkForm" method="post" enctype="multipart/form-data">
			<div style="margin-top: 10px;margin-left: 35px" >
			 			文件：
			 			<input class="easyui-filebox" name="file" style="width: 220px" >
			</div>
			<div style="margin-top: 10px;margin-left: 35px" >
			 			备注：
			 			<input  name="note"  class="easyui-textbox" 
			 			data-options="required:true,multiline:true" style="width: 220px;height:150px">
			</div>		
			</form>
		</div>
	<!-- 录入窗口按钮 -->
	<div id="apk_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="apk_save">保存</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="apk_cancel">取消</a>
	</div>

</body>
</html>
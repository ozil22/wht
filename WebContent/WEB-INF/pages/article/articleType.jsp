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
	var articleTypeDataGrid = $("#articleTypeDataGrid");//数据表格
	var articleTypeDialog = $("#articleTypeDialog");//录入窗口
	var articleTypeForm = $("#articleTypeForm");//录入表单
	   
	//初始化组件
	articleTypeDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'articleType/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		rownumbers:true,
		pagination:true,
		pageSize:10,
		pageList:[5,10,20,50],
		toolbar:'#articleType_toolbar'
	});
	
	
	
	//创建cmdType管理所有操作函数
	var cmdArticleType={
		//新增
		articleType_create:function(){
			// 1.清空对话框数据
			articleTypeForm.form("clear");
			// 2.打开添加对话框
			articleTypeDialog.dialog("open");
		},

		//保存
		articleType_save:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			articleTypeForm.form("submit",{
				url:"/articleType/save",
				success:function(data){ 
					data = $.parseJSON(data);//转为json
					if(data.success){
						articleTypeDialog.dialog("close");
						$.messager.alert("温馨提示",data.message,"info",function(){
							// 刷新表格
							articleTypeDataGrid.datagrid("reload");
						});
					}else{
						$.messager.alert("温馨提示",data.message,"info");
					}
				}
			});
		},
		//取消
		articleType_cancel:function(){
			articleTypeDialog.dialog("close");
		},

		//删除
		articleType_del:function(){
			// 1.获取选中行信息
			var rowData = articleTypeDataGrid.datagrid("getSelected");
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
					$.get("/articleType/delete",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								articleTypeDataGrid.datagrid("reload");
							});
						}else{
							$.messager.alert("温馨提示",data.message,"error");
						}
					},"json");
				}
			});
			
		}, 

		//刷新
		articleType_refresh:function(){
			articleTypeDataGrid.datagrid("reload");
		}

	};
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");
		console.debug(cmd);
		if (cmd) {
			cmdArticleType[cmd]();//执行对应的方法
		}
	});
});
</script>
	<!-- 数据表格 -->
	<table id="articleTypeDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="name" width="10" align="center">名称</th>
			</tr>
		</thead>
	</table>
	<!-- 工具条 -->
	<div id="articleType_toolbar">
	 	<div>
		 	<form method="post" id="articleType_searchForm">
				<a class="easyui-linkbutton" iconCls="icon-add" data-cmd="articleType_create">添加</a>
				<a class="easyui-linkbutton" iconCls="icon-remove" data-cmd="articleType_del">删除</a>
			<a class="easyui-linkbutton" iconCls="icon-reload"  data-cmd="articleType_refresh">刷新</a>
		 	</form>
		 </div> 
	</div>


	<!-- 录入窗口 -->
	<div id="articleTypeDialog" class="easyui-dialog" style="width: 300px;height: 130px;"
	data-options="title:'编辑文章分类',modal:true,iconCls:'icon-edit',buttons:'#articleType_bs',closed:true">
			<form id="articleTypeForm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id"></input>
			<div style="margin-top: 20px;margin-left: 35px" >
			 			分类名字：
			 			<input  name="name"  class="easyui-textbox" data-options="required:true" style="width: 150px">
			</div>		
			</form>
		</div>
	<!-- 录入窗口按钮 -->
	<div id="articleType_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="articleType_save">保存</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="articleType_cancel">取消</a>
	</div>

</body>
</html>
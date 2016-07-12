<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统参数</title>
</head>

<body >
<!-- <script type="text/javascript">
	// 设置系统参数，两个个grid平分布局
	$(function(){
		function autoResize(){
			// 获取页面总宽度
			var screenWidth = document.documentElement.clientWidth;
			// 获取一半宽度
			var halfWidth = screenWidth/2;
 			alert(halfWidth);
			// 为左边的面板设置宽度
			$("#westPanel").panel('resize',{
				width: halfWidth
			});
			console.debug($("#westPanel"));
 			// 通知layout组件，重新设置大小
			$("#layout").layout("resize");
		}
		
		// 在页面加载完毕后设置页面
		autoResize();
		
		// 窗口大小发生改变时重置大小
		$(window).resize(autoResize);

	});
</script> -->
<script type="text/javascript">
$(function(){
	//1. 声明当前页面，需要用到的组件名称
	//2. 缓存页面组件
	var systemParamDataGrid = $("#systemParamDataGrid");//数据系统参数表格
	var systemParamDialog = $("#systemParamDialog");//系统参数录入窗口
	var systemParamFrom = $("#systemParamFrom");//系统参数表单
	var systemParamItemDataGrid = $("#systemParamItemDataGrid");//系统参数明细表格
	var systemParamItemDialog = $("#systemParamItemDialog");//系统参数明细录入窗口
	var systemParamItemFrom = $("#systemParamItemFrom");//系统参数明细表单
	var systemParamItemParentComboGird = $("#systemParamItemParentComboGird");//系统参数目录选择窗口
	
	//初始化系统参数表格
	systemParamDataGrid.datagrid({
		fit:true,
		border:false,
		url:'systemParam/list',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		rownumbers:true,
		toolbar:'#toolbar',
		//给系统参数注册被选中一行的事件
		onClickRow: function(rowIndex, rowData){
			//console.debug(rowData.id);
			//获取选中行的id
			var id = rowData.id;
			//当有一行选中时初始化系统参数明细表格
			systemParamItemDataGrid.datagrid({
				url:'/systemParamItem/list?id='+id
			});
			
		}	
	});
	//初始化系统参数明细表格
	systemParamItemDataGrid.datagrid({
				fit:true,
				border:false,
				singleSelect:true,
				fitColumns:true,
				striped:true,
				rownumbers:true,
				toolbar:'#toolbarItem'
			});
	//隐藏systemParamItemParent列
	systemParamItemDataGrid.datagrid('hideColumn', 'parent');
	
	 //初始化系统参数目录选择框
	systemParamItemParentComboGird.combogrid({    
		panelWidth: 400,
		idField: 'id',
		textField: 'name',
		url: 'systemParam/list',
		method: 'get',
		fitColumns: true,
	    columns:[[    
	        {field:'name',title:'名称',width:100},    
	        {field:'sn',title:'编号',width:100} 
	    ]]    
	});   
	//获取系统参数目录选择框
	var grid = systemParamItemParentComboGird.combogrid('grid');
	var cmdSystemParam={
		//删除一条系统参数
		del:function(){
			//获取系统参数选中行
			var row = systemParamDataGrid.datagrid("getSelected");
			
			//判断用户是否有选中数据
			if(!row){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("确认框","你确认删除["+row.name+"]数据吗？",function(b){
				if(b){
					//通过ajax传入需要删除数据的id
					var id = row.id;
					$.post("/systemParam/delete",{id:id},function(data){
						//data 响应数据
						if(data.success){
							//提示用户删除的结果
							$.messager.alert("温馨提示",data.message,"info");
							systemParamDataGrid.datagrid("reload");
						}else{
							$.messager.alert("温馨提示",data.message,"error");
						}
					});
				}
			});
		},
		//新建系统参数
		create:function(){
			//清空录入表单
			systemParamFrom.form("clear");
			// 修改标题
			systemParamDialog.dialog("setTitle","录入系统参数信息");
			//打开录入窗口
			systemParamDialog.dialog("open");
		},
		//编辑系统参数
		edit:function(){
			//获取选中行
			var row = systemParamDataGrid.datagrid("getSelected");
			//判断用户是否有选中数据
			if(!row){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//清空录入表单
			systemParamFrom.form("clear");
			// 修改标题
			systemParamDialog.dialog("setTitle","修改系统参数信息");
			//5.设置不可修改
			$("#systemParamName").textbox('readonly');
			$("#systemParamSn").textbox('readonly');
			//$("#systemParamNormal").prop('disable',true);
			//$("#systemParamStop").prop('disable',true);
			
			//打开录入窗口
			systemParamDialog.dialog("open");
			systemParamFrom.form("load",row);//回显数据
		},
		//保存系统参数
		save:function(){
			//进行一个提交操作;
			systemParamFrom.form("submit",{
				//数据提交成功后
				success:function(data){
					//data提交后响应的数据,注意是一个json字符串
					data = $.parseJSON(data);//json字符串转化为json对象；
					if (data.success) {
						//关闭录入窗口
						systemParamDialog.dialog("close");
						//保存
	            		$.messager.alert("温馨提示",data.message,"info",function(){
						//刷新表格
	            		systemParamDataGrid.datagrid("reload");
	            		});
					}else{
						//关闭录入窗口
						$.messager.alert("温馨提示",data.message,"warning");
					}
				}
			});
		},
		//刷新系统参数明细表格
		refresh:function(){
			systemParamDataGrid.datagrid("reload");
		},
		//取消编辑系统参数
		cancle:function(){
			systemParamDialog.dialog("close");
		},
		//删除一条系统参数明细
		delSystemParamItem:function(){
			//获取系统参数明细选中行
			var rowItem = systemParamItemDataGrid.datagrid("getSelected");
			
			//判断用户是否有选中数据
			if(!rowItem){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("确认框","你确认删除该参数吗？",function(b){
				if(b){
					var id = rowItem.id;
					$.post("/systemParamItem/delete",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info");
							systemParamItemDataGrid.datagrid("reload");
						}else{
							$.messager.alert("温馨提示",data.message,"error");
						}
					});
				}
			});
		},
		//新建系统参数明细
		createSystemParamItem:function(){
			systemParamItemFrom.form("clear");
			systemParamItemDialog.dialog("setTitle","录入系统参数明细信息");
			systemParamItemDialog.dialog("open");
		},
		//编辑系统参数明细
		editSystemParamItem:function(){
			//获取选中行
			var rowItem = systemParamItemDataGrid.datagrid("getSelected");
			//判断用户是否有选中数据
			if(!rowItem){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//清空录入表单
			systemParamItemFrom.form("clear");
			// 修改标题
			systemParamItemDialog.dialog("setTitle","修改系统参数明细信息");
			//打开录入窗口
			systemParamItemDialog.dialog("open");
			//系统参数目录回显
			if(rowItem.parent){
				rowItem["parent.id"] = rowItem.parent.id;
			}
			systemParamItemFrom.form("load",rowItem);//回显数据
		},
		//保存系统参数明细
		saveSystemParamItem:function(){
			systemParamItemFrom.form("submit",{
				url:"/systemParamItem/save",
				success:function(data){
					data = $.parseJSON(data);//json字符串转化为json对象；
					if (data.success) {
						//关闭录入窗口
						systemParamItemDialog.dialog("close");
						//保存
	            		$.messager.alert("温馨提示",data.message,"info",function(){
						//刷新表格
	            		systemParamItemDataGrid.datagrid("reload");
	            		});
					}else{
						//关闭录入窗口
						systemParamItemDialog.dialog("close");
						$.messager.alert("温馨提示",data.message,"warning");
					}
				}
			});
		},
		//取消编辑系统参数明细
		cancleSystemParamItem:function(){
			systemParamItemDialog.dialog("close");
		},
		//刷新系统参数明细表格
		refreshSystemParamItem:function(){
			systemParamItemDataGrid.datagrid("reload");
		}
	}
	//5、 统一对页面所有的按钮，做一次监听
	$("a[data-cmd]").on("click",function(){
		var cmd = $(this).data("cmd");
		if(cmd){
			cmdSystemParam[cmd]();
		}
		
	});
});
</script>
<div id="layout" class="easyui-layout" data-options="fit:true">
	<!--
	 	系统参数目录（西）
	 	split:true 可以拖动大小	 
	-->
	<div id="westPanel" class="easyui-panel" data-options="region:'west',split:true,title:'系统参数目录'"  style="width: 400px;">
		<table id="systemParamDataGrid">
			<!--
				定义表格的表头 
			 -->
			<thead>
				<tr>
					<!-- field：指定需要显示列对应JSON数据属性 -->
					<th field="name"    width="80" align="center">名称</th>
					<th field="sn"   width="100" align="center">编号</th>
					<!-- formatter:格式化列显示内容 -->
					<th field="state"  width="50" align="center" data-options="formatter:formatSystemDictionaryState">状态</th>
				</tr>
			</thead>
		</table>
	
		 <div id="toolbar">
			<a data-cmd="create"  class="easyui-linkbutton" iconCls="icon-add" plain="true">新建</a>
			<a data-cmd="edit"  class="easyui-linkbutton" iconCls="icon-edit" plain="true" >编辑</a>
			<a data-cmd="del"  class="easyui-linkbutton" iconCls="icon-remove" plain="true" >删除</a>
			<a data-cmd="refresh"  class="easyui-linkbutton" iconCls="icon-reload" plain="true" >刷新</a>
		</div>
	
	
		<div id="systemParamDialog" class="easyui-dialog" style="width: 330px;height: 310px;padding: 10px;"
			data-options="modal:true,buttons:'#bs',closed:true" >
			<form id="systemParamFrom" action="systemParam/save" method="post">
				<input type="hidden" name="id"></input>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			名称：
				 	<input type="text" name="name" id="systemParamName" class="easyui-textbox" data-options="required:true" style="width:200px">
				</div>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			编号：
				 	<input type="text" name="sn" id="systemParamSn" class="easyui-textbox" data-options="required:true" style="width:200px">
				</div>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			状态：
					<input type="radio" name="state" id="systemParamNormal" value="1"> 正常 &emsp;
					<input type="radio" name="state" id="systemParamStop" value="0"> 停用
				</div>
				 <div style="margin-top: 10px;margin-left: 25px">
				 	简介：
			 		<input type="text" name="intro"  class="easyui-textbox" style="width:200px;height:100px" data-options="required:true,multiline:true">
				 </div>
			</form>
		</div>
		<div id="bs">
			<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="save">保存</a>
			<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="cancle">取消</a>
		</div>
	</div>
	<!-- 系统参数明细（中）-->
	<div data-options="region:'center',title:'系统参数明细'">
		<table id="systemParamItemDataGrid">
			<!--
				定义表格的表头 
			 -->
			<thead>
				<tr>
					<!-- field：指定需要显示列对应JSON数据属性 -->
					<th field="sn"   width="20" align="center">序号</th>
					<th field="value"    width="20" align="center">参数值</th>
					<th field="intro"    width="100" align="center">简介</th>
					<!-- 系统参数目录,用于编辑的时候回显 -->
					<th field="parent"  width="0"/>
				</tr>
			</thead>
		</table>
	
		 <div id="toolbarItem" >
			<a data-cmd="createSystemParamItem"  class="easyui-linkbutton" iconCls="icon-add" plain="true">新建</a>
			<a data-cmd="editSystemParamItem"  class="easyui-linkbutton" iconCls="icon-edit" plain="true" >编辑</a>
			<a data-cmd="delSystemParamItem"  class="easyui-linkbutton" iconCls="icon-remove" plain="true" >删除</a>
			<a data-cmd="refreshSystemParamItem"  class="easyui-linkbutton" iconCls="icon-reload" plain="true" >刷新</a>
		</div>
	
	
		<div id="systemParamItemDialog" class="easyui-dialog" style="width: 350px;height: 310px;padding: 10px;"
			data-options="modal:true,iconCls:'icon-edit',buttons:'#bsItem',closed:true" >
			<form id="systemParamItemFrom" method="post">
				<input type="hidden" name="id"></input>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			参数序号：
				 	<input type="text" name="sn"  class="easyui-textbox" data-options="required:true" style="width:200px">
				</div>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			参数&emsp;值：
				 	<input type="text" name="value"  class="easyui-numberbox" data-options="required:true,min:0,precision:2" style="width:200px">
				</div>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			参数目录：
					<select id="systemParamItemParentComboGird" name="parent.id" style="width:200px"></select>
				</div>
				 <div style="margin-top: 10px;margin-left: 25px">
				 	简&emsp;&emsp;介：
			 		<input type="text" name="intro"  class="easyui-textbox" style="width:200px;height:100px" data-options="required:true,multiline:true">
				 </div>
			</form>
		</div>
		<div id="bsItem">
			<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="saveSystemParamItem">保存</a>
			<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="cancleSystemParamItem">取消</a>
		</div>
	</div>
</div>
</body>

</html>
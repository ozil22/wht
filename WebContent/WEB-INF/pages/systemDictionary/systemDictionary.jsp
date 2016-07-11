<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据字典</title>
</head>

<body >
<!-- <script type="text/javascript">
	// 设置数据字典，两个个grid平分布局
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
	var systemDictionaryDataGrid = $("#systemDictionaryDataGrid");//数据数据字典表格
	var systemDictionaryDialog = $("#systemDictionaryDialog");//数据字典录入窗口
	var systemDictionaryFrom = $("#systemDictionaryFrom");//数据字典表单
	var itemDataGrid = $("#itemDataGrid");//数据字典明细表格
	var itemDialog = $("#itemDialog");//数据字典明细录入窗口
	var itemFrom = $("#itemFrom");//数据字典明细表单
	var parentComboGird = $("#parentComboGird");//数据字典目录选择窗口
	
	//初始化数据字典表格
	systemDictionaryDataGrid.datagrid({
		fit:true,
		border:false,
		url:'systemDictionary/list',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		rownumbers:true,
		pagination:true,
		pageSize:10,
		pageList:[5,10,20,50],
		toolbar:'#toolbar',
		//给数据字典注册被选中一行的事件
		onClickRow: function(rowIndex, rowData){
			//console.debug(rowData.id);
			//获取选中行的id
			var id = rowData.id;
			//当有一行选中时初始化数据字典明细表格
			itemDataGrid.datagrid({
				fit:true,
				border:false,
				url:'/systemDictionaryItem/list?id='+id,
				singleSelect:true,
				fitColumns:true,
				striped:true,
				rownumbers:true,
				pagination:true,
				pageSize:5,
				pageList:[5,10,20,50],
				toolbar:'#toolbarItem'
			});
			//隐藏parent列
			itemDataGrid.datagrid('hideColumn', 'parent');
			
		}	
	});
	 //初始化数据字典目录选择框
	parentComboGird.combogrid({    
		panelWidth: 400,
		idField: 'id',
		textField: 'name',
		url: 'systemDictionary/list',
		method: 'get',
		pagination:true,
		fitColumns: true,
	    columns:[[    
	        {field:'name',title:'名称',width:100},    
	        {field:'sn',title:'编号',width:100},    
	    ]]    
	});   
	//获取数据字典目录选择框
	var grid = parentComboGird.combogrid('grid');
	var pager = grid.datagrid("getPager");//获取下面的分页条
	pager.pagination({
		 showPageList: false, // 隐藏分页长度选中下拉框
		 showRefresh: false,  // 隐藏刷新按钮
		 displayMsg: ''  // 清除右边的提示消息
	});
	var cmdObj={
		//删除一条数据字典
		del:function(){
			//获取数据字典选中行
			var row = systemDictionaryDataGrid.datagrid("getSelected");
			
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
					$.post("/systemDictionary/delete",{id:id},function(data){
						//data 响应数据
						if(data.success){
							//提示用户删除的结果
							$.messager.alert("温馨提示",data.msg,"info");
							
							//表格重新加载数据
							//刷新表格数据方法：reload，load
							//reload : 页码不变条件参数不变，直接重新加载一次数据;
							//load   : 重新加载数据，页码变成第一页，条件参数没有了；
							systemDictionaryDataGrid.datagrid("reload");
						}else{
							$.messager.alert("温馨提示",data.msg,"error");
						}
					});
				}
			});
		},
		//新建数据字典
		create:function(){
			//清空录入表单
			systemDictionaryFrom.form("clear");
			// 修改标题
			systemDictionaryDialog.dialog("setTitle","录入数据字典信息");
			//打开录入窗口
			systemDictionaryDialog.dialog("open");
		},
		//编辑数据字典
		edit:function(){
			//获取选中行
			var row = systemDictionaryDataGrid.datagrid("getSelected");
			//判断用户是否有选中数据
			if(!row){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//清空录入表单
			systemDictionaryFrom.form("clear");
			// 修改标题
			systemDictionaryDialog.dialog("setTitle","修改数据字典信息");
			//打开录入窗口
			systemDictionaryDialog.dialog("open");
			//console.debug(row);//本地数据
			systemDictionaryFrom.form("load",row);//回显数据
		},
		//保存数据字典
		save:function(){
			//进行一个提交操作;
			systemDictionaryFrom.form("submit",{
				//提交之前，我们可以返回false,阻止提交；
				onSubmit:function(){
					//提交之前，完成自己的验证；
					return $(this).form('validate');
				},
				//数据提交成功后
				success:function(data){
					//data提交后响应的数据,注意是一个json字符串
					data = $.parseJSON(data);//json字符串转化为json对象；
					if (data.success) {
						//关闭录入窗口
						systemDictionaryDialog.dialog("close");
						//保存
	            		$.messager.alert("温馨提示",data.message,"info",function(){
						//刷新表格
	            		systemDictionaryDataGrid.datagrid("reload");
	            		});
					}else{
						//关闭录入窗口
						$.messager.alert("温馨提示",data.message,"warning");
					}
				}
			});
		},
		//刷新数据字典明细表格
		refresh:function(){
			systemDictionaryDataGrid.datagrid("reload");
		},
		//取消编辑数据字典
		cancle:function(){
			systemDictionaryDialog.dialog("close");
		},
		//删除一条数据字典明细
		delItem:function(){
			//获取数据字典明细选中行
			var rowItem = itemDataGrid.datagrid("getSelected");
			
			//判断用户是否有选中数据
			if(!rowItem){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("确认框","你确认删除["+rowItem.name+"]数据吗？",function(b){
				if(b){
					//通过ajax传入需要删除数据的id
					var id = rowItem.id;
					$.post("/systemDictionaryItem/delete",{id:id},function(data){
						//data 响应数据
						if(data.success){
							//提示用户删除的结果
							$.messager.alert("温馨提示",data.msg,"info");
							
							//表格重新加载数据
							//刷新表格数据方法：reload，load
							//reload : 页码不变条件参数不变，直接重新加载一次数据;
							//load   : 重新加载数据，页码变成第一页，条件参数没有了；
							itemDataGrid.datagrid("reload");
						}else{
							$.messager.alert("温馨提示",data.msg,"error");
						}
					});
				}
			});
		},
		//新建数据字典明细
		createItem:function(){
			//清空录入表单
			itemFrom.form("clear");
			// 修改标题
			itemDialog.dialog("setTitle","录入数据字典明细信息");
			//打开录入窗口
			itemDialog.dialog("open");
		},
		//编辑数据字典明细
		editItem:function(){
			//获取选中行
			var rowItem = itemDataGrid.datagrid("getSelected");
			//判断用户是否有选中数据
			if(!rowItem){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//清空录入表单
			itemFrom.form("clear");
			// 修改标题
			itemDialog.dialog("setTitle","修改数据字典明细信息");
			//打开录入窗口
			itemDialog.dialog("open");
			//数据字典目录回显
			if(rowItem.parent){
				rowItem["parent.id"] = rowItem.parent.id;
			}
			itemFrom.form("load",rowItem);//回显数据
		},
		//保存数据字典明细
		saveItem:function(){
			//form标签本身就是一个easyui-form组件，不需要在标签上面写class="easyui-form"；
			
			//进行一个提交操作;
			itemFrom.form("submit",{
				//提交地址
				url:"/systemDictionaryItem/save",
				//提交之前，我们可以返回false,阻止提交；
				onSubmit:function(){
					//提交之前，完成自己的验证；
					return $(this).form('validate');
				},
				//数据提交成功后
				success:function(data){
					//data提交后响应的数据,注意是一个json字符串
					data = $.parseJSON(data);//json字符串转化为json对象；
					if (data.success) {
						//关闭录入窗口
						itemDialog.dialog("close");
						//保存
	            		$.messager.alert("温馨提示",data.msg,"info",function(){
						//刷新表格
	            		itemDataGrid.datagrid("reload");
	            		});
					}else{
						//关闭录入窗口
						itemDialog.dialog("close");
						$.messager.alert("温馨提示",data.msg,"warning");
					}
				}
			});
		},
		//取消编辑数据字典明细
		cancleItem:function(){
			itemDialog.dialog("close");
		},
		//刷新数据字典明细表格
		refreshItem:function(){
			itemDataGrid.datagrid("reload");
		}
	}
	//5、 统一对页面所有的按钮，做一次监听
	$("a[data-cmd]").on("click",function(){
		var cmd = $(this).data("cmd");
		if(cmd){
			cmdObj[cmd]();
		}
		
	});
	//自定义验证数字
	$.extend($.fn.validatebox.defaults.rules, {    
		    num : {    
		        validator: function(value){    
		            return !isNaN(value);    
		        },    
		        message: '请输入一个数字.' 
		    }    
		});  
	
});
</script>
<div id="layout" class="easyui-layout" data-options="fit:true">
	<!--
	 	数据字典目录（西）
	 	split:true 可以拖动大小	 
	-->
	<div id="westPanel" class="easyui-panel" data-options="region:'west',iconCls:'icon-ok',split:true,title:'数据字典目录'"  style="width: 450px;">
		<table id="systemDictionaryDataGrid">
			<!--
				定义表格的表头 
			 -->
			<thead>
				<tr>
					<!-- field：指定需要显示列对应JSON数据属性 -->
					<th field="name"    width="100">名称</th>
					<th field="sn"   width="100">编号</th>
					<!-- formatter:格式化列显示内容 -->
					<th field="state"  width="100" data-options="formatter:formatSystemDictionaryDate">状态</th>
				</tr>
			</thead>
		</table>
	
		 <div id="toolbar">
			<a data-cmd="create" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true">新建</a>
			<a data-cmd="edit" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" >编辑</a>
			<a data-cmd="del" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" >删除</a>
			<a data-cmd="refresh" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="true" >刷新</a>
		</div>
	
	
		<div id="systemDictionaryDialog" class="easyui-dialog" style="width: 330px;height: 310px;padding: 10px;"
			data-options="modal:true,iconCls:'icon-ok',buttons:'#bs',closed:true" >
			<form id="systemDictionaryFrom" action="systemDictionary/save" method="post">
				<input type="hidden" name="id"></input>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			名称：
				 	<input type="text" name="name"  class="easyui-textbox" data-options="required:true" style="width:200px">
				</div>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			编号：
				 	<input type="text" name="sn"  class="easyui-textbox" data-options="required:true" style="width:200px">
				</div>
				<div style="margin-top: 10px;margin-left: 25px" >
		 			状态：
					<input type="radio" name="state" value="1"> 正常 &emsp;
					<input type="radio" name="state" value="0"> 停用
				</div>
				 <div style="margin-top: 10px;margin-left: 25px">
				 	简介：
			 		<input type="text" name="intro"  class="easyui-textbox" style="width:200px;height:100px" data-options="required:true,multiline:true">
				 </div>
				 </table>
			</form>
		</div>
		<div id="bs">
			<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="save">保存</a>
			<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="cancle">取消</a>
		</div>
	</div>
	<!-- 数据字典明细（中）-->
	<div data-options="region:'center',title:'数据字典明细',iconCls:'icon-ok'">
		<table id="itemDataGrid">
			<!--
				定义表格的表头 
			 -->
			<thead>
				<tr>
					<!-- field：指定需要显示列对应JSON数据属性 -->
					<th field="name"    width="100">字典项</th>
					<th field="sn"   width="100">序号</th>
					<!-- 字典目录,用于编辑的时候回显 -->
					<th field="parent" ></th>
				</tr>
			</thead>
		</table>
	
		 <div id="toolbarItem" >
			<a data-cmd="createItem" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true">新建</a>
			<a data-cmd="editItem" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" >编辑</a>
			<a data-cmd="delItem" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" >删除</a>
			<a data-cmd="refreshItem" href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-reload" plain="true" >刷新</a>
		</div>
	
	
		<div id="itemDialog" class="easyui-dialog" style="width: 400px;height: 300px;padding: 20px;"
			data-options="modal:true,iconCls:'icon-ok',buttons:'#bsItem',closed:true" >
			<form id="itemFrom" method="post">
				<input type="hidden" name="id"></input>
				<table align="center">
					<tr>
						<td>
							字典序号
						</td>
						<td>
							<input type="text" name="sn"  class="easyui-validatebox" data-options="required:true,validType:'num'">
						</td>
					</tr>
					<tr>
						<td>
							字典项名：
						</td>
						<td>
							<input type="text" name="name"  class="easyui-validatebox" data-options="required:true,validType:'length[2,10]'">
						</td>
					</tr>
					<tr>
						<td>
							字典目录：
						</td>
						<td>
							 <select id="parentComboGird" name="parent.id" style="width:155px">
							</select>
						</td>
					</tr>
					<tr>
						<td>
							字典简介:
						</td>
						<td>
							<textarea class="easyui-textbox" name="intro" data-options="multiline:true" rows="3" cols="18"></textarea>
						</td>
					</tr>
					
			</form>
		</div>
		<div id="bsItem">
			<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="saveItem">保存</a>
			<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="cancleItem">取消</a>
		</div>
	</div>
</div>
</body>

</html>
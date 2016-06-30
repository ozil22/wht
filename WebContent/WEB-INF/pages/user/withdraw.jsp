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
	var withdrawStateCombobox = $("#withdrawStateCombobox");//状态下拉列表
	var accountNameSearchbox = $("#accountNameSearchbox");//订单号搜索框
	var withdrawDataGrid = $("#withdrawDataGrid");//数据表格
	var withdraw_searchForm = $("#withdraw_searchForm");//参数表单
	var withdrawDialog = $("#withdrawDialog");//录入窗口
	var withdrawForm = $("#withdrawForm");//录入表单
	//初始化组件
	withdrawDataGrid.datagrid({//初始化数据表格
		fit:true,
		border:false,
		url:'withdraw/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		nowrap:false,
		//rownumbers:true,
		pagination:true,
		pageSize:20,
		pageList:[5,10,20,50],
		toolbar:'#withdraw_toolbar'
	});
	
	accountNameSearchbox.searchbox({
		prompt:'申请账户',
		searcher:function(){ 
			var paramObj = {};
			var paramArr = withdraw_searchForm.serializeArray();
			 $.each(paramArr,function(i,data){
				 paramObj[data.name] = data.value;
			 }); 
			withdrawDataGrid.datagrid("load",paramObj);
		}
	});
	//创建cmdType管理所有操作函数
	var cmdUser={
		
		//同意提现
		withdraw_agree:function(){
			// 1.获取选中行信息
			var rowData = withdrawDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			if(rowData.state==3){
				$.messager.alert("温馨提示","请不要重复同意！！","warning");
				return;
			}
			var name = rowData.name;
			$.messager.confirm("温馨提示","是否确认同意提现【"+name+"】账户提现??",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/withdraw/agreeApply",{id:id},function(data){
						$.messager.alert("温馨提示",data.message,"info",function(){
							withdrawDataGrid.datagrid("reload");
						});
					},"json");
				}
			});
		},
		//拒绝提现
		withdraw_refuse:function(){
			// 1.获取选中行信息
			var rowData = withdrawDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			if(rowData.state==1){
				$.messager.alert("温馨提示","请不要重复拒绝！！","warning");
				return;
			}
			var name = rowData.name;
			$.messager.confirm("温馨提示","是否确认拒绝【"+name+"】账户提现申请??",function(yes){
				if(yes){
					// 清空对话框数据
					withdrawForm.form("clear");
					//打开添加对话框
					withdrawDialog.dialog("open");
					// 获取数据的唯一标示
					var id = rowData.id;
					//回显数据
					rowData['id']=id;
					// 把数据加载到对话框中,回显数据
					withdrawForm.form("load",rowData);
				}
			});
		},
		//确定
		withdraw_ok:function(){
			// 把表单的参数，通过AJAX方式提交到后台
			withdrawForm.form("submit",{
				url:"/withdraw/refuseApply",
				success:function(data){//data只是json字符串，需要手动转 
					data = $.parseJSON(data);
					if(data.success){
						$.messager.alert("温馨提示",data.message,"info",function(){
							//关闭对话框
							withdrawDialog.dialog("close");
							withdrawDataGrid.datagrid("reload");
						});
					}
				}
			});
		},
		
		//取消
		withdraw_cancel:function(){
			withdrawDialog.dialog("close");
		},
		
		//刷新
		withdraw_refresh:function(){
			withdrawDataGrid.datagrid("reload");
		}
	}
	
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			console.debug(cmd);
			cmdUser[cmd]();//执行对应的方法
		}
	});
	
});
</script>
	<!-- 数据表格 -->
	<table id="withdrawDataGrid" >
		<!-- 定义表格的表头  -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="account" data-options="formatter:formatName"
					width="20" align="center">申请账户</th>
				<th field="type" data-options="formatter:formatWithdrawType"
					width="10" align="center">提现方式</th>
				<th field="amount" width="10" align="center">金额</th>
				<th field="accountName" width="20" align="center">提现账号</th>
				<th field="name" width="10" align="center">户主姓名</th>
<!-- 				<th field="accountAddress" width="30" align="center">开户地址</th> -->
				<th field="state" data-options="formatter:formatWithdrawState"
					width="10" align="center">状态</th>
				<th field="time" data-options="formatter:formatDateTime"
					width="30" align="center">操作时间</th>
				<th field="remark" data-options="formatter:formatTitle"
					width="50" align="center">备注</th>
			</tr>
		</thead>
	</table>

	<!-- 工具条和搜索条件 -->
	<div id="withdraw_toolbar">
		<div>
		
			<form method="post" id="withdraw_searchForm">
				<a class="easyui-linkbutton" iconCls="icon-ok"  data-cmd="withdraw_agree">同意提现</a>
				<a class="easyui-linkbutton" iconCls="icon-cancel" data-cmd="withdraw_refuse">拒绝提现</a>
				<a class="easyui-linkbutton" iconCls="icon-reload"  data-cmd="withdraw_refresh">刷新</a>
				<input id="accountNameSearchbox" name="name" style="width: 100px" />
			</form>
		</div>
	</div>
	
	<!-- 拒绝提现表格 -->
	<div id="withdrawDialog" class="easyui-dialog" style="width: 400px;height: 280px;padding: 20px;"
		data-options="modal:true,title:'拒绝原因',iconCls:'icon-edit',buttons:'#withdraw_bs',closed:true" >
		<form id="withdrawForm"  method="post">
			<input type="hidden" name="id">
			 <div style="margin-top: 0px;">
			 	<input type="text" name="remark"  class="easyui-textbox" style="width:340px;height:180px" data-options="required:true,multiline:true">
			 </div>
		</form>
	</div>
	<div id="withdraw_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="withdraw_ok">确定</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"  data-cmd="withdraw_cancel">取消</a>
	</div>

</body>
</html>
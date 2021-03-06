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
	var adPositionIdDataGrid = $("#adPositionIdDataGrid");//数据表格
	var goodsTypeIdCombobox = $("#goodsTypeIdCombobox");//商品类型
	var typeIdCombobox = $("#typeIdCombobox");//广告类型
	var adPositionId_searchForm = $("#adPositionId_searchForm");//搜索表单
	var adPositionIdDialog = $("#adPositionIdDialog");//编辑窗口
	var goodsTypeCombobox = $("#goodsTypeCombobox");//商品类型
	var typeCombobox = $("#typeCombobox");//广告类型
	var adPositionIdForm = $("#adPositionIdForm");//参数表单
	//广告类型
	var typeData= [{
		id: 1,
		name: 'banner广告位'
	},{
		id: 2,
		name: '宽广告位'
	},{
		id: 3,
		name: '窄广告位'
	}];

   //数据表格
    adPositionIdDataGrid.datagrid({
    	fit:true,
		border:false,
		url:'adPositionId/query',
		singleSelect:true,
		fitColumns:true,
		striped:true,
		pagination:true,
		pageSize:20,
		pageList:[5,10,20,50],
		toolbar:'#adPositionId_toolbar',
		view: detailview,    
	    detailFormatter:function(index,row){    
	        return '<div id="pro-' + index + '" style="padding:5px"></div>';    
	    },    
	  	onExpandRow: function(index,row){
	        $('#pro-'+index).datagrid({    
	        	url:'promotion/query?adPositionId='+row.id+'&promotionDate=3'+'&state=1',  
	        	fitColumns:true,
	            loadMsg:'数据加载中,请稍后...',
	            height:'auto',  
     			columns:[[  
                     {field:'id',title:'ID',width:20,align:"center"},  
                     {field:'image',title:'广告图片',formatter:formatBigImg,width:60,align:"center"},  
                     {field:'beginTime',title:'开始时间',formatter:formatTime,width:40,align:"center"},  
                     {field:'endTime',title:'结束时间',formatter:formatTime,width:40,align:"center"},  
                     {field:'price',title:'价格',width:30,align:"center"},  
                     {field:'contentType',title:'跳转类型',formatter:formatPromotionType,width:50,align:"center"},  
                     {field:'state',title:'状态',formatter:formatPromotionState,width:30,align:"center"} 
                 ]],
               onResize:function(){
            	   adPositionIdDataGrid.datagrid('fixDetailRowHeight',index);
					},
					onLoadSuccess:function(){
						setTimeout(function(){
							adPositionIdDataGrid.datagrid('fixDetailRowHeight',index);
						},0);
				}
	        }); 
	        adPositionIdDataGrid.datagrid('fixDetailRowHeight',index);
	    }   
	});
	
	$.ajax({ 
		url: 'type/list',
		dataType: 'json', 
		success: function(goodsTypeData){ 
			goodsTypeData.push({'id':'0','name':'首页'});
			//搜索
			goodsTypeIdCombobox.combobox({
		        prompt:'商品类型',
		        valueField:'id',
		        textField:'name',
		        data:goodsTypeData
		    });
			//编辑
			goodsTypeCombobox.combobox({
		        prompt:'商品类型',
		        valueField:'id',
		        textField:'name',
		        data:goodsTypeData
		    });
        }
	});
	
	typeIdCombobox.combobox({
        prompt:'广告类型',
        valueField:'id',
        textField:'name',
        data:typeData
    });
	typeCombobox.combobox({
        prompt:'广告类型',
        valueField:'id',
        textField:'name',
        data:typeData
    });
    
	//创建cmdType管理所有操作函数
	var cmdAdPositionId={
		//高级查询
	    adPositionId_search:function(){
	    	var params = {};
			var paramArr = adPositionId_searchForm.serializeArray();
		    $.each(paramArr,function(i,data){
		    	params[data.name] = data.value;
		 	}); 
	 		adPositionIdDataGrid.datagrid("load",params);
		},
			
		//新增
		adPositionId_create:function(){
			// 1.清空对话框数据
			adPositionIdForm.form("clear");
			// 2.打开添加对话框
			adPositionIdDialog.dialog("open");
		},


		//编辑
		adPositionId_edit:function(){
			// 1.获取选中行信息
			var rowData = adPositionIdDataGrid.datagrid("getSelected");
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			// 3.清空对话框数据
			adPositionIdForm.form("clear");
			// 4.打开添加对话框
			adPositionIdDialog.dialog("open");
			//5.设置下拉框不可用
			goodsTypeCombobox.combobox('disable');
			typeCombobox.combobox('disable');
			// 6.把数据加载到对话框中,回显数据
			adPositionIdForm.form("load",rowData);
		},
		//保存
		adPositionId_save:function(){
			var i = 0;
			var a = 0;
			// 把表单的参数，通过AJAX方式提交到后台
			adPositionIdForm.form("submit",{
				url:"/adPositionId/save",
				success:function(data){ 
					data = $.parseJSON(data);//转为json
					if(data.success){
						adPositionIdDialog.dialog("close");
						$.messager.alert("温馨提示",data.message,"info",function(){
							// 刷新表格
							adPositionIdDataGrid.datagrid("reload");
						});
					}else{
						$.messager.alert("温馨提示",data.message,"info");
					}
				}
			});
		},
		//取消
		adPositionId_cancel:function(){
			adPositionIdDialog.dialog("close");
		},

		//删除
		adPositionId_del:function(){
			// 1.获取选中行信息
			var rowData = adPositionIdDataGrid.datagrid("getSelected");
			console.debug(rowData);
			// 2.判断
			if(!rowData){
				$.messager.alert("温馨提示","你没有选中任何数据","info");
				return;
			}
			//提示用户是否删除
			$.messager.confirm("温馨提示","是否确认删除该广告位?",function(yes){
				if(yes){
					// 获取数据的唯一标示
					var id = rowData.id;
					// 发送AJAX请求，修改ID对应数据状态
					$.get("/adPositionId/delete",{id:id},function(data){
						if(data.success){
							$.messager.alert("温馨提示",data.message,"info",function(){
								adPositionIdDataGrid.datagrid("reload");
							});
						}else{
							$.messager.alert("温馨提示",data.message,"warning");
						}
					},"json");
				}
			});
			
		},
		
		//刷新
		adPositionId_refresh:function(){
			adPositionIdDataGrid.datagrid("reload");
		},	
		//当前广告
		adPositionId_promotion:function(){
			adPositionIdDataGrid.datagrid("reload");
		}
	}
	
	//对页面上所有按钮做一次统一的监听
	$("a[data-cmd]").on("click",function(){
		//获取data-cmd属性的值
		var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
		if (cmd) {
			cmdAdPositionId[cmd]();//执行对应的方法
		}
	});
});
</script>
	<table id="adPositionIdDataGrid" style="width: 600px;height: 300px;">
		<!--
			定义表格的表头 
		 -->
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th align="center" field="id"  width="10" >ID</th>
				<th align="center" field="type"   width="30" data-options="formatter:formatAdType">类型</th>
				<th align="center" field="goodsType"   width="30" data-options="formatter:formatAdCoodsType">广告位置</th>
				<th align="center" field="dayPrice"      width="30">价格(元/天)</th>
			</tr>
		</thead>
	</table>
	
	 <div id="adPositionId_toolbar">
	 	<div>
		 	<form method="post" id="adPositionId_searchForm">
			<a class="easyui-linkbutton" iconCls="icon-add"  data-cmd="adPositionId_create">添加</a>
			<a class="easyui-linkbutton" iconCls="icon-remove" data-cmd="adPositionId_del">删除</a>
			<a class="easyui-linkbutton" iconCls="icon-edit"  data-cmd="adPositionId_edit">编辑</a>
			<a class="easyui-linkbutton" iconCls="icon-reload"  data-cmd="adPositionId_refresh">刷新</a>
				<input id="typeIdCombobox" name="type" style="width: 100px"/>
				<input id="goodsTypeIdCombobox" name="goodsTypeId" style="width: 100px"/>
				<a class="easyui-linkbutton" iconCls="icon-search" data-cmd="adPositionId_search">搜索</a>
		 	</form>
		 </div> 
	</div>
	
	<!-- 新增或编辑表格 -->
	<div id="adPositionIdDialog" class="easyui-dialog" style="width: 250px;height: 210px;padding: 20px;"
		data-options="modal:true,title:'广告位编辑',iconCls:'icon-edit',buttons:'#adPositionId_bs',closed:true" >
		<form id="adPositionIdForm"  method="post">
			<input type="hidden" name="id">
			 <div style="margin-top: 10px;">
			 	广告位置：<input id="goodsTypeCombobox" name="goodsType.id" data-options="required:true" style="width: 130px"/>
			 </div>
			 <div style="margin-top: 10px;">
			 	广告类型：<input id="typeCombobox" name="type" data-options="required:true" style="width: 130px"/>
			 </div>
			 <div style="margin-top: 10px;">
			 	广告价格：<input type="text" name="dayPrice"  class="easyui-numberbox" data-options="required:true" style="width: 130px">
			 </div>
		</form>
	</div>
	<div id="adPositionId_bs">
		<a class="easyui-linkbutton" iconCls="icon-save" data-cmd="adPositionId_save">保存</a>
		<a class="easyui-linkbutton" iconCls="icon-cancel"  data-cmd="adPositionId_cancel">取消</a>
	</div>
	
</body>
</html>
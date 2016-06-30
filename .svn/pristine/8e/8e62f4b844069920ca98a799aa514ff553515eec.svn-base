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
	var systemAccountDataGrid = $("#systemAccountDataGrid");//数据表格
   //数据表格
    systemAccountDataGrid.datagrid({
    	fit:true,
		border:false,
		url:'systemAccount/get',
		singleSelect:true,
		striped:true,
		toolbar:'#systemAccount_toolbar',
		view: detailview,    
	    detailFormatter:function(index,row){    
	        return '<div id="systemAccount-' + index + '" style="padding:5px"></div>';    
	    },    
	    onExpandRow: function(index,row){
	        $('#systemAccount-'+index).datagrid({    
	        	url:'systemAccount/systemAccountFlow',  
	        	fitColumns:true,
	            loadMsg:'数据加载中,请稍后...',
	            height:'auto',
	            rownumbers:true,
	    		pagination:true,
	            pageSize:20,
	    		pageList:[5,10,20,50],
     			columns:[[  
     			         {field:'accountActionType',title:'流水类型',formatter:formatSystemFlowType,width:10,align:"center"},  
                         {field:'amount',title:'金额',width:10,align:"center"},  
                         {field:'account',title:'发生账户',formatter:formatName,width:20,align:"center"},  
                         {field:'operateTime',title:'时间',formatter:formatDateTime,width:20,align:"center"},  
                         {field:'balance',title:'系统余额',width:10,align:"center"},  
                         {field:'note',title:'备注',width:50,align:"center"} 
                 ]],
               onResize:function(){
                	 systemAccountDataGrid.datagrid('fixDetailRowHeight',index);
					},
					onLoadSuccess:function(){
						setTimeout(function(){
							systemAccountDataGrid.datagrid('fixDetailRowHeight',index);
						},0);
				}
	        }); 
	        systemAccountDataGrid.datagrid('fixDetailRowHeight',index);
	    }   
	});
});
</script>
	<table id="systemAccountDataGrid" style="width: 600px;height: 300px;">
		<thead>
			<tr>
				<!-- field：指定需要显示列对应JSON数据属性 -->
				<th field="balance"   width="98%" align="center">账户余额</th>
			</tr>
		</thead>
	</table>
	
</body>
</html>
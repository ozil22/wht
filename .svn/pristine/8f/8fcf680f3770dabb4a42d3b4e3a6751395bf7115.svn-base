<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords"
	content="html5,jquery,ui,widgets,ajax,ria,web framekwork,web development,easy,easyui,datagrid,treegrid,tree">
<meta name="description"
	content="jQuery EasyUI will show you the live demo of components.">
<title>Live Demo - jQuery EasyUI</title>
<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/login.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
<![endif]-->
<script src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.form.js"></script>
<script type="text/javascript" src="/js/tooltips.js"></script>
<script type="text/javascript" src="/js/login.js"></script>
<!-- 引入页面公共资源:easyui主题/皮肤;easyui图标样式;easyui依赖jquery库(jquery.min.js);easyui核心文件;easyui汉化文件 -->
<%@include file="/WEB-INF/pages/common.jsp" %>
<link rel="stylesheet" href="/css/main.css" type="text/css" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
</head>
<script type="text/javascript">  
    $(document).ready(function(){  
        var saveDataAry=[];  
        var data1={"userId":"1"};  
        var data2={"addressId":"1"};  
        var data3={"productId":"1","price":"20","num":"5","amount":"100"};  
        var data4={"productId":"2","price":"10","num":"5","amount":"50"};  
        saveDataAry.push(data1);  
        saveDataAry.push(data2);         
        saveDataAry.push(data3);         
        saveDataAry.push(data4);         
        $.ajax({ 
            type:"POST", 
            url:"submitOrder", 
            dataType:"json",      
            contentType:"application/json",               
            data:JSON.stringify(saveDataAry), 
            success:function(data){ 
                                       
            } 
         }); 
    });  
</script>  
</html>
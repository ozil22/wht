<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 设置初始缩放比例为1.0，使用设备宽度  -->
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <!-- 在iOS下开启全屏模式  -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <!-- 隐藏 Sarafi 状态栏  -->
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <style>
        html, body { width:100%; height:100%; padding:0; margin:0; }
        .mobile-content { width:100%; }
        .mobile-content img { width:100%; }
    </style>
    <title></title>
</head>
<body>
	<div class="mobile-content" id="content" style="width: 100%">
	 <!-- 内容图片迭代部分 -->
    <c:forEach items="${images}" var="image">
    	<img alt="" src="${image.src}">
	</c:forEach>
	</div>
</body>
</html>
﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<link rel="stylesheet" href="css/proxyGoods.css" />
	 <link rel="stylesheet" href="css/swiper.min.css"/>
<title>商品详情</title>
<style>
*{ margin:0; padding:0;}
  html { font-size: 62.5%; font-family: "微软雅黑";}
  body {background:#F6F6F6;;}
  html,body{width: 100%;}
  .swiper-container {
        width: 100%;
        height: 40rem;
        margin: 0 auto;
        /*margin-top: 4.4rem;*/
    }
    .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
         height: 40rem;
        
    }
    .swiper-slide img{width: 100%;height: 100%;min-height: 40rem;}
    .swiper-pagination-fraction{
     bottom: 10px;
      color: #fff;
	  width: 12%;
	  border-radius: 25px;
	  right: 0px;
      background-color:rgba(102,102,102,0.6);}
</style>

<script type="text/javascript" src="js/proxyGoods.js" ></script>
 <script type="text/javascript" src="js/jquery-1.10.1.min.js" ></script>
<script type="text/javascript" src="js/swiper.min.js" ></script>


</head>

<body>
<body>
	<!--遮罩层-->
<div class="z_transparency"></div>
<!-- 轮播图 -->
 <div class="swiper-container">
    <div class="swiper-wrapper">
    	<c:forEach items="${goods.bannerImages}" var="image">
	        <div class="swiper-slide blue-slide">
	            <img src="${image.src}" alt="" style="width: 100%;height: 100%"/>
	        </div>
		</c:forEach> 
    </div>
 </div>
<div style="text-align: center">
    <img src="${proxyUser.headImage}" alt="" class="z_header"/>
</div>
	<div class="Center">
		<p class="p2">
			<span class="sp2">${proxyUser.nickname}</span>给你推荐
		</p>
		<span class="sp3">${proxyGoods.details}</span>
		<p class="p3">
			<!--<a href="javascript:scrollTo(0,0);" >-->
			查看商品详情
		</p>
		<div style="clear: both;"></div>
	</div>

	<div class="Conte" id="Content">

		<div class="detail-content rich-reset">
			<c:forEach items="${goods.detailsImages}" var="image">
		        <div class="swiper-slide blue-slide">
		            <img src="${image.src}" class="TB21"/>
		        </div>
			</c:forEach> 
		</div>
		<div
			style="position: fixed; bottom: 100px; right: 11px; z-index: 2; display: block;"
			class="btn-scroll-top">
			<span class="iconfont"><a href="javascript:scrollTo(0,0);">&#8593;</a></span>
		</div>

	</div>

	<div class="bot">
		<div class="bott">
		<img class="img1" align="absmiddle" src="${goods.image}" width="20%" height="80px">
		<div class="bott_content">
		<p class="p1">${goods.name}</p>
		<span class="sp1">￥${proxyGoods.price}</span>
		</div>
		 <div class="btn">立即购买</div>
		</div>
	</div>
	<div class="z_transparency"></div>
	<div style="height: 100px"></div>
	<div class="z_typeChoose">
	    <div style="border-bottom: 1px solid #ccc;padding:0.2rem 0">
	        <img class="z_bottomBoxImg" src="${goods.image}" alt=""/>
	        <div class="z_typeChooseCenter">
	           <p class="z_bottomBoxCenterTop">${goods.name}</p>
	           <p class="z_bottomBoxCenterButton">￥${proxyGoods.price}</p>
	        </div>
	        <p class="z_typeChooseBtnClose">&#10005</p>
	        <div style="clear: both"></div>
	    </div>
	    <form action="/proxy/proxyOrder" id="submitGoods">
	    	<input type="hidden" name="image" value="${goods.image}">
	    	<input type="hidden" name="name" value="${goods.name}">
	    	<input type="hidden" name="price" value="${proxyGoods.price}">
	    	<input type="hidden" name="postage" value="${goods.postage}">
	    	<input type="hidden" name="proxyGoodsId" value="${proxyGoods.id}">
	    	<input type="hidden" name="productId" id="productId" >
	    	<input type="hidden" name="productNum" id="productNum" >
	    
			<div style="width: 95%; margin: auto">
				<div class="guige">
				<span
					style="float: left; padding: 0.6rem 1rem 0.2rem 0.3rem; font-size: 1.8rem;; color: #7D7D7D;">规格&nbsp;
				
				
				
				<!--商品所有规格-->
				<c:forEach items="${products}" var="product">
					<span class="z_typeChooseBtnCol" proId="${product.id}" atr="0"
						num="${product.inventoryNum}">${product.specification}</span>
				</c:forEach>
				</span>
				<div style="clear:both"></div>
				</div>
				<hr style="margin: 0.8rem 0" />
				<div style="padding:1rem 0;font-size:1.8rem">
					<span
						style="float: left; padding: 0.6rem 1rem 0.2rem 0.3rem; color: #7D7D7D;">数量&nbsp;
					</span>
					<div style="float: left; text-align: center; border: 1px solid #ccc">
						<input class="z_typeChooseBtnSbu" type="button" value="-" /> <input
							class="z_typeChooseBtnNumber" type="text" value="1" /> <input
							class="z_typeChooseBtnAdd" type="button" value="+" />
						<div style="clear: both"></div>
					</div>
					<span
						style="float: left; padding: 0.35rem 0 0.2rem 0.8rem; font-size: 1.8rem;; color: #7D7D7D;">
						&nbsp;库存:</span> <span
						style="float: left; padding: 0.35rem 1rem 0.2rem 0.3rem; font-size: 1.8rem; color: #7D7D7D;">
						<div class="z_ware" style="font-size: 1.6rem;"></div>
					</span>
					<div style="clear: both"></div>
				</div>
				<hr style="margin: 0.5rem 0" />
				<div class="z_typeChooseSub">确认</div>
			</div>
			<div style="margin-bottom: 100px"></div>
		</form>
</div>

</body>
</html>
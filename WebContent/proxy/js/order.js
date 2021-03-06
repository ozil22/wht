﻿
$(function() {
	$(".close").bind("click", function() {
		$(".login").hide();
	})

	var appH = $(window).height();
	var appW = $(window).width();

	$(".chooseaddress").height(appH).width(appW).css("left", appW + "px");

	$(".S_address").height(appH).width(appW).css("left", appW + "px");
	//点击选择地址
	$(".login-gint").bind("click", function() {
		var customerId = $("#customerId").val();
		if (customerId) {
			console.debug($(".chooseaddress"));
			$(".chooseaddress").show();
			$(".chooseaddress").animate({
				"left" : 0
			}, "1500");
		} else {
			$(".login").show();
		}

	});
	$(".headimgl").bind("click", function() {
		$(".chooseaddress").show();
		$(".chooseaddress").animate({
			"left" : appW + "px"
		}, "1500");

	});
	//默认地址选择框
	$(".default").bind("click", function() {
		var addressId = $(this).prevAll("input").val();
		$.post("/proxy/updateDefault", {
			id : addressId,
		}, function(data) {
			if (data.success) {
				window.location.reload();
			} else {
				alert(data.message);
			}
		});
	});
	//删除地址
	$(".deleteAddress").bind("click", function() {
		var addressId = $(this).prevAll("input").val();
		$.post("/proxy/deleteAddress", {
			addressId : addressId,
		}, function(data) {
			if (data.success) {
				window.location.reload();
			} else {
				alert(data.message);
			}
		});
	});
	//编辑地址按钮
	$(".editAddress").bind("click", function() {
		var addressId = $(this).prevAll("input").val();
		$.post("/proxy/getAddress", {
			addressId : addressId,
		}, function(data) {
			if (data.success) {
				var address = data.data;
				$("#updateAddressId").val(addressId);
				$(".z_resuleName").val(address.name);
				$(".z_resuleTel").val(address.phone);
				$(".z_resuleAddre:eq(1) option:selected").val(address.city.id);
				$(".z_resuleAddre:eq(1) option:selected").text(address.city.name);
				$(".z_resuleMoreAddre").val(address.address);
				$(".S_address").show();
				$(".S_address").animate({
					"left" : 0
				}, "1500");
			} else {
				alert(data.message);
			}
		});
		
	});
	//添加地址按钮
	$(".btn-addressbtn").bind("click", function() {
		$("#updateAddressId").val("-1");
		$(".S_address").show();
		$(".S_address").animate({
			"left" : 0
		}, "1500");

	});
	$(".headimgll").bind("click", function() {
		$(".S_address").show();
		$(".S_address").animate({
			"left" : appW + "px"
		}, "1500");
	});
	//选择城市
	$(".z_resuleAddre:eq(0)").change(function() {
		var provinceId = $(".z_resuleAddre:eq(0) option:selected").val();
		if (provinceId == -1) {
			return;
		}
		$.post(
			"/proxy/city",
			{"provinceId":provinceId},
			function(data){
				if(data.success){
					var html = "";
					var citys = data.data;
					 for(var i=0;i<citys.length;i++){
						html += '<option value='+citys[i].id+'>'+citys[i].name+'</option>';
					 }
					$(".z_resuleAddre:eq(1)").html(html);
					$(".z_resuleAddreHid").attr("value", provinceId);
				}
			}
		)
	});
	//添加地址
	var prov, city, moreAddres;
	$(".z_addressBoxS").bind(
			"click",
			function() {
				var customerId = $("#customerId").val();
				var updateAddressId = $("#updateAddressId").val();
				var name = $(".z_resuleName").val();
				var tel = $(".z_resuleTel").val();
				var prov = $(".z_resuleAddre:eq(0) option:selected").val();
				var city = $(".z_resuleAddre:eq(1) option:selected").val();
				var moreAddres = $(".z_resuleMoreAddre").val();
				var address = $(".z_resuleAddreHid").val();
				var addressArr = [];
				var title = [ "收货人", "手机号", "省", "市", "详细地址" ];
				var data = {};
				for ( var i in address.split("&")) {
					var provSplit = address.split("&")[0];
					var citySplit = address.split("&")[1];
					addressArr.push(name, tel, prov, city, moreAddres);
					for (var j = 0; j < 5; j++) {
						data[title[j]] = addressArr[j];
					}
				}
				var jasnArr = [];
				for ( var l in data) {
					var dataKey = l;
					if (data[l] == "") {
						jasnArr.push(l);
					}
				}
				var emptyAddress = jasnArr.join(",");
				if (emptyAddress) {
					alert("请输入您的" + emptyAddress);
				} else {
					var isTel = /^1[34578]\d{9}$/;
					if (!isTel.test(tel)) {
						alert("请输入手机号");
					} else {
						$.post("/proxy/saveAddress",
								{	"name" : name,
									"phone" : tel,
									"city.id" : city,
									"address" : moreAddres,
									"customer.id" : customerId,
									"id" : updateAddressId
								},
								function(data){
									if (data.success) {
										window.location.reload();
									}else {
										alert("添加失败,请重试！");
									}
							
						})
					}
				}
			});


	// 登陆按钮
	$("#submitCustomer").bind("click", function() {
		var username = $(".phone").val();
		var password = $(".password1").val();
		if (username == '') {
			alert('请填写手机号！');
		} else if (password == '') {
			alert('请填写密码！');
		} else {
			$.post("/proxy/customerLogin", {
				username : username,
				password : password
			}, function(data) {
				if (data.success) {
					window.location.reload();
				} else {
					alert(data.message);
				}
			});

		}
	});
	// 发送临时密码
	$("#postRandomCode").bind("click", function() {
		var phone = $(".phone").val();
		if (phone == '') {
			alert('请填写手机号！');
		} else {
			$.post("/proxy/customerRandomCode", {
				phone : phone,
			}, function(data) {
				alert(data.message);
			});
			
		}
	});
	// 支付宝支付
	$("#alipay").bind("click", function() {
		var customerId = $("#customerId").val();
		var addressId = $("#addressId").val();
		var productNum = $("#productNum").text();
		var productId = $("#productId").val();
		var proxyGoodsId = $("#proxyGoodsId").val();
		$.post("/proxy/submitOrder", {
			"customerId" : customerId,
			"addressId" : addressId,
			"proxyGoodsId" : proxyGoodsId,
			"productOrderItems[0].product.id" : productId,
			"productOrderItems[0].num" : productNum
		}, function(data) {
			if (data.success) {
				alert("支付宝支付");
				var order = data.data;
				console.log(order);
				$.post("/pay/aliPay", {
					"order_no" : order.orderNum,
					"amount" : order.payPrice,
					"channel" : "alipay_wap",
					"subject" : order.subject,
					"body" : order.body
				}, function(data) {
					if (data.success) {
						pingpp.createPayment(charge, function(result, err){
						    console.log(result);
						    console.log(err.msg);
						    console.log(err.extra);
						    if (result == "fail") {
						    	alert("支付失败！");
						    } 
						});
					}else {
						alert(data.message);
					}
				});
			}else {
				alert(data.message);
			}
		});
	});
	// 微信支付
	$("#wx").bind("click", function() {
		var customerId = $("#customerId").val();
		var addressId = $("#addressId").val();
		var productNum = $("#productNum").text();
		var productId = $("#productId").val();
		var proxyGoodsId = $("#proxyGoodsId").val();
		$.post("/proxy/submitOrder", {
			"customerId" : customerId,
			"addressId" : addressId,
			"proxyGoodsId" : proxyGoodsId,
			"productOrderItems[0].product.id" : productId,
			"productOrderItems[0].num" : productNum
		}, function(data) {
			if (data.success) {
				alert("微信");
				var orderMap = data.data;
				var orderNum = orderMap.orderNum;
				var payPrice = orderMap.payPrice;
				var orderParam= orderNum+ ","+payPrice;
				window.location.href="/pay/outhUrl?orderParam="+orderParam;
			}else {
				alert(data.message);
			}
		});
	});
});

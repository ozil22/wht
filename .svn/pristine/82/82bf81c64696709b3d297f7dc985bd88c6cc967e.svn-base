<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>微信支付</title>
</head>

<body>
<body>
	<script type="text/javascript">
		var charge = $("charge").val();
		
		pingpp.createPayment(charge, function(result, err){
		    console.log(result);
		    console.log(err.msg);
		    console.log(err.extra);
		    if (result == "success") {
		    	alert("支付成功！");
		    } 
		    if (result == "fail") {
		    	alert("支付失败！");
		    } 
		    if (result == "cancel") {
		    	alert("取消支付！");
		    } 
		});
	
	</script>
	
	<input type="hidden" value="${charge}" id="charge">
</body>
</html>

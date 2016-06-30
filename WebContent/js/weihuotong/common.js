//添加一个吧form表单的参数转换为一个json对象的方法
$.fn.serializeJson = function() {
	var paramJson = {};
	var params = this.serializeArray();
	$.each(params, function(index, data) {
		paramJson[data.name] = data.value;
	});
	return paramJson;
}

//对页面上所有按钮做一次统一的监听
$("a[data-cmd]").on("click",function(){
	//获取data-cmd属性的值
	var cmd = $(this).data("cmd");//data-key="value"其实就是一个{key:value}类型的数据
	if (cmd) {
		cmdType[cmd]();//执行对应的方法
	}
});

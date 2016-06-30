// JavaScript Document
//支持Enter键登录
		document.onkeydown = function(e){
			if($(".bac").length==0)
			{
				if(!e) e = window.event;
				if((e.keyCode || e.which) == 13){
					var obtnLogin=document.getElementById("submit_btn")
					obtnLogin.focus();
				}
			}
		}

		// 提交表单
		$(function(){
			$('#submit_btn').click(function(){
				
				show_loading();
				if($('#name').val() == ''){
					show_err_msg('账号还没填呢！');	
					$('#name').focus();
				}else if($('#password').val() == ''){
					show_err_msg('密码还没填呢！');
					$('#password').focus();
				}else{
					$("#login_form").form("submit",{
						url:"/checkLogin",
						success:function(data){
							data = $.parseJSON(data);
							console.debug(data);
							if(data.success){
								show_msg('登录成功咯！  正在为您跳转...','/');
								location.href="/main";
							}else{
								show_err_msg('登录失败咯！','/');
								$.messager.alert("温馨提示",data.message,"info",function(){
									// console.debug($("input[name=username]"));
									if(data.errorCode==-100){// 用户名错误
										$("input[name=username]").focus();
									}else if(data.errorCode==-101){// 密码错误
										$("input[name=password]").focus();
									}
								});
							}
							
						}
					
					});
				}
			});
			
		});    	
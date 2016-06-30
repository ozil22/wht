window.onload = function(){

    var swiper = new Swiper('.swiper-container', {
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        pagination: '.swiper-pagination',
        paginationType: 'fraction'
    });
  
   
//    头像
    var z_headerW = $(".z_header").width();
    $(".z_header").height(z_headerW).css("top",-z_headerW/2).css("z-index",1);
    
//  底部头像
    var z_bottomBoxImg = $(".z_bottomBoxImg").width();
	
	 $(".btn").bind("click",function(){$(".z_transparency").show();$(".z_typeChoose").slideDown().css("bottom",0);});
//   立即购买按钮
	    $(".z_bottomBoxCenterBtn").bind("click",function(){
	    	$(".z_transparency").show();
	    	$(".z_typeChoose").slideDown().css("bottom",0);});
//	    尺寸颜色s数量查询显示库存【data返回的是库存数量】
	    var thisId,thisZal,thisNum;
	    function colorSize(thisId,thisZal,thisNum){
	        $(".z_ware").text(thisNum);
	    }
//	    规格选择
	    $(".z_typeChooseBtnCol").bind("click",
	    	function(){
	    		var thisId = $(this).attr("proId"),
	    			thisAal = $(this).attr("atr"),
	    			thisNum = $(this).attr("num");
		        if(thisAal == 0){
		            $(".z_typeChooseBtnCol").css("border-color","#ccc").css("color","#000").attr("atr",0);
		            $(this).css("border-color","#fb3c10").css("color","#fb3c10").attr("atr",1);
		            $(".z_typeChooseBtnHidCol").val(thisId);
		            colorSize(thisId,thisZal,thisNum - 1);
		            $(".z_typeChooseBtnNumber").val(1)
		        }else{
		            $(this).css("border-color","#ccc").css("color","#000").attr("atr",0);
		            $(".z_typeChooseBtnHidCol").val("");
		            colorSize(thisId,thisZal,thisNum - 1);
		        }
	    	});
//    弹框-按钮
    $(".z_typeChooseBtnSbu").bind("click",function(){
    	var z_typeChooseBtnNumber = Number($(".z_typeChooseBtnNumber").val());
    	var num = Number($(".z_ware").text());
        if(z_typeChooseBtnNumber > 1){
            $(".z_typeChooseBtnNumber").val(z_typeChooseBtnNumber-1);
    		colorSize(thisId,thisZal,num + 1);
        }
    });
//    弹框+按钮
    $(".z_typeChooseBtnAdd").bind("click",function(){
    	var z_typeChooseBtnNumber = Number($(".z_typeChooseBtnNumber").val());
    	var num = Number($(".z_ware").text());
        if (num > 0) {
			colorSize(thisId,thisZal,num - 1);
        	$(".z_typeChooseBtnNumber").val(z_typeChooseBtnNumber+1);
		}
    });
//    弹框输入文本
    $(".z_typeChooseBtnNumber").bind("keyup",function(){
        var z_typeChooseBtnNumber = Number($(".z_typeChooseBtnNumber").val());
        var num = Number($(".z_ware").text());
        if(1 < z_typeChooseBtnNumber <= num){
        	colorSize(thisId,thisZal,num - z_typeChooseBtnNumber);
        }
    });
//    弹框关闭按钮
    $(".z_typeChooseBtnClose").bind("click",function(){
        $(".z_typeChooseBtnHidCol").val("");
        $(".z_typeChooseBtnNumber").attr("value",1);
        $(".z_typeChooseBtn").css("border-color","#ccc").css("color","#000").attr("atr",0);
        $(".z_transparency").hide();
      $(".z_typeChoose").slideUp().css("bottom",appH+"rem");
    });
//    弹框提交按钮
    $(".z_typeChooseSub").bind("click",function(){
		var proId = $(".z_typeChooseBtnCol[atr=1]").attr("proId"),
		num = $(".z_typeChooseBtnNumber").val();
		$("#productNum").val(num);
		$("#productId").val(proId);
		$("#submitGoods").submit();
    })
    //商品详情
    $(".btn-scroll-top").hide();
    $(window).scroll(function() {
        if($(window).scrollTop() >= 250){
            $('.btn-scroll-top').fadeIn(300);
        }else{
            $('.btn-scroll-top').fadeOut(300);
        }
    });
    $('.btn-scroll-top').click(function(){$('html,body').animate({scrollTop: '0px'}, 300);});
	$(".p3").click(function(){
		$(".Conte").show();
	})
	
	$("#z_tC span").click(function(){
		var index=$(this).index();
		$(".kucun span").eq(index).show().siblings().hide();
	});
	var hz=document.body.scrollHeight;

	$(".z_transparency").css("height",hz);
};
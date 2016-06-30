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
<link rel="stylesheet" href="/css/main.css" type="text/css" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
</head>
<script type="text/javascript">  
$(function() {  
    $('#frmupload1').submit(function() {  
        if ($('#file1').val() == '') {  
            alert('请选择上传导入文件!');  
            $('#file1').focus();  
            return false;  
        }else{  
            if(!isvalidatefile($('#file1').val()))  
                  return false;  
                  
        }  
    });  
    $('#frmupload2').submit(function() {  
        if ($('#file2').val() == '') {  
            alert('请选择上传导入文件!');  
            $('#file2').focus();  
            return false;  
        }else{  
            if(!isvalidatefile($('#file2').val()))  
                  return false;  
                  
        }  
    });  
});  
  
function isvalidatefile(obj) {  
      
    var extend = obj.substring(obj.lastIndexOf(".") + 1);  
    //alert(extend);  
    if (extend == "") {  
    } else {  
        if (!(extend == "jpg" )) {  
            alert("请上传后缀名为jpg的文件!");  
              
            return false;  
        }  
    }  
    return true;  
}  
</script>
	<body>  
		<h1>保存店铺</h1>  
		<form action="/app/saveStore" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit();">  
  
    	<p>请选择文件：</p>  
      
    	<p ${not empty errors ?"style='color : red;'":""}>${errors}</p>  
    	<input type="file" name="file" multiple="true" id="file"/>&nbsp;
    	店铺名字<input type="text" name="name">
    	联系人<input type="text" name="linkman">
    	身份证姓名<input type="text" name="man">
    	电话<input type="text" name="phone">
    	QQ<input type="text" name="qq">
    	城市id<input type="text" name="city.id">
    	用户id<input type="text" name="userId">
    	<input type="submit" value="确定"/>  
		</form>  
	</body>  
	<body>  
		<h1>保存广告</h1>  
		<form action="/app/submitPromotionOrder" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit();">  
  
    	<p>请选择文件：</p>  
      
    	<p ${not empty errors ?"style='color : red;'":""}>${errors}</p>  
    	<input type="file" name="image"  id="file"/>&nbsp;
    	广告位id<input type="text" name="adPositionId">
    	内容类型<input type="text" name="contentType">
    	内容id<input type="text" name="contentId">
    	开始时间<input type="text" name="begin">
    	结束时间<input type="text" name="end">
    	店铺id<input type="text" name="storeId">
    	<input type="submit" value="确定"/>  
		</form>  
	</body>  
	<body>  
		<h1>保存文章</h1>  
		<form action="/app/addArticle" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit();">  
  
    	<p>请选择文件：</p>  
      
    	<p ${not empty errors ?"style='color : red;'":""}>${errors}</p>  
    	<input type="file" name="file" multiple="true" id="file"/>&nbsp;
    	标题<input type="text" name="name">
    	内容<input type="text" name="content">
    	栏目id<input type="text" name="articleType.id">
    	商家id<input type="text" name="store.id">
    	<input type="submit" value="确定"/>  
		</form>  
	</body> 
	<body>  
		<h1>保存商品</h1>  
		<form action="/app/addGoods" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit();">  
  
    	<p>banner图：</p>  
      
    	<p ${not empty errors ?"style='color : red;'":""}>${errors}</p>  
    	<input type="file" name="bannerImage" multiple="true" id="file"/>&nbsp;
    	<p>详情图片：</p>  
      
    	<p ${not empty errors ?"style='color : red;'":""}>${errors}</p>  
    	<input type="file" name="detailsImage" multiple="true" id="file"/>&nbsp;
    	商品id<input type="text" name="id">
    	名字<input type="text" name="name">
    	详情<input type="text" name="details">
    	运费<input type="text" name="postage">
    	价格<input type="text" name="salePrice">
    	品牌id<input type="text" name="brand.id">
    	分类id<input type="text" name="type.id">
    	店铺id<input type="text" name="store.id">
    	规格<input type="text" name="products[0].specification">
    	库存<input type="text" name="products[0].inventoryNum">
    	规格<input type="text" name="products[1].specification">
    	库存<input type="text" name="products[1].inventoryNum">
    	规格<input type="text" name="products[2].specification">
    	库存<input type="text" name="products[2].inventoryNum">
    	<input type="submit" value="确定"/>  
		</form>  
	</body>  
	<body>  
		<h1>修改店铺头像</h1>  
		<form action="/app/updateHeadImage" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit();">  
  
    	<p>头像：</p>  
      
    	<p ${not empty errors ?"style='color : red;'":""}>${errors}</p>  
    	<input type="file" name="image" multiple="true" id="file"/>&nbsp;
    	商家id<input type="text" name="storeId">
    	<input type="submit" value="确定"/>  
		</form>  
	</body> 
	<body>  
		<h1>更新背景图</h1>  
		<form action="/app/updateBackground" method="post" enctype="multipart/form-data" onsubmit="return checkSubmit();">  
  
    	<p>背景图：</p>  
      
    	<p ${not empty errors ?"style='color : red;'":""}>${errors}</p>  
    	<input type="file" name="image" multiple="true" id="file"/>&nbsp;
    	用户id<input type="text" name="userId">
    	<input type="submit" value="确定"/>  
		</form>  
	</body> 
</html>
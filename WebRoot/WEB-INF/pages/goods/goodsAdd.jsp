<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 添加商品</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
<meta name="expires" content="0">
<meta name="keywords"
	content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
<meta name="description" content="惠宇茶舍网上订座">
<%@include file="../../../include.jsp"%>
<link rel="stylesheet" type="text/css" href="${basePath}js/upload/tz-upload.css">
<script type="text/javascript" src="${basePath}js/upload/tz_upload.js"></script>
<style type="text/css">
body {
	background: #ddd;
	font-family: "微软雅黑";
}

.nav {
	width:100%;
	height:60px;
	background:#646464;
	border-top:5px solid #f0f0f0;
}

.active{
	background:#999;
}

.nav .nav-box {
	width:1000px;
	height:60px;
	margin:0 auto;
	
}
.nav .nav-box .nav-title:hover {
	background:#999;
}

.nav .nav-box ul li {
	list-style: none;
	float: left;
	width:95px;
	text-align:center;
	height:60px;
	line-height:60px;
	color:#fff;
}

.nav .nav-box ul li a {
	color:#fff;
	display:block;
	font-size:16px;
}

.panel {
	width:1000px;
	height:auto;
	background:#fafafa;
	margin:0 auto;
	padding:20px 0px;
	border:1px solid #fafafa;
}

.panel .p-title {
	padding-left:20px;
}

.panel .p-items {
	width:1000px;
	margin:10px auto;
}

.panel .p-items .i-title {
	width:980px;
	height:40px;
	background:#f3f3f3;
	line-height:50px;
	padding-left:20px;
	font-size:13px;
	margin-bottom:20px;
}
.panel #gnewbtn {
	width:900px;
	height:40px;
	margin:0 auto;
}
.panel .p-items .item {
	width:900px;
	height:35px;
	margin:0px auto;
}
.panel .p-items .gimgbox {
	width:640px;
	height:130px;
	margin:10px auto;
}
.panel .p-items .gimgbox #gmainimg{
	width:150px;
	height:130px;
	border:1px solid #ddd;
}
.panel .p-items .item .inputbox {
	width:900px;
}
.panel .p-items .item .inputbox #gname {
	width:550px;
}
.panel .p-items .item .inputbox #gprice,#gqty {
	width:100px;
}
.panel .p-items .item .inputbox #gdescription {
	width:550px;
}
.panel .p-items .opt-name {
	width:130px;
	text-align:right;
	font-size:13px;
	line-height:30px;
}
.panel .p-items .item .inputbox .inputleft {
	display:block;
}
.panel .p-items .item .inputbox #type-select,#unit-select {
	width:250px;
	height:30px;
	padding:3px 12px;
	font-size:13px;
}
.panel .p-items .item .inputbox .inputright {
	width:315px;
	height:22px;
	padding:3px 8px;
	border:1px solid #ddd;
}
.panel .p-items .item .inputbox .inputright,.uploadbtn {
	float:left;
}
.panel .p-items .item .downbox {
	width:110px;
	height:30px;
	display:block;
	float:left;
	font-size:14px;
	margin-left:15px;
}
.p-items .item .downbox input[type="radio"]{
	width:16px;
	height:16px;
	vertical-align: middle;
}
.p-items .item .downbox .downtext {
	height:30px;
	width:80px;
	display:inline-block;
	padding-left:5px;
}
.panel .p-items .item .downbox .downtype {
	width:30px;
}
.panel .p-items .uploadbtn{
	width:80px;
	height:30px;
	margin-left:15px;
	border:1px solid #ddd;
	text-align:center;
	line-height:30px;
	font-size:12px;
	display:block;
	background:#f3f3f3;
}

.panel .p-items .p-button {
	width:auto;
	background:#fafafa;
	float:left;
}

.panel .button {
	width:120px;
	height:40px;
	line-height:40px;
	color:#fff;
	text-align:center;
	display:block;
	background:#1CBD9D;
	float:left;
	margin-right:10px;
}
.panel #saveBtn {
	height:100px;
}
</style>
</head>

<body>
	<%@include file="../../../header.jsp"%>
	<!-- 后台导航 开始 -->
	<div class="nav"> 
		<div class="nav-box">
			<ul>
				<li class="bg-orange"><a href="${basePath }admin/admin.jxp">首页</a></li>
				<li><a href="javascript:void(0);" class="nav-title active">商品管理</a></li>
				<li><a href="javascript:void(0);" class="nav-title" style="color:orange">添加商品</a></li>
				<li><a href="${basePath }goods/edit" class="nav-title">查询商品</a></li>
				<li><a href="${basePath }goodset/index" class="nav-title">设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<div id="gnewbtn">
			<a href="javascript:void greset();" class="button fs16">添加商品</a>
		</div>
		<div class="p-items">
			<div class="i-title  fs18">商品信息</div>
			<div class="item">
				<div class="inputbox">
					<input type="hidden" value="${goods.id }" id="gid">
					<label class="inputleft">
						<i class="opt-name">(必选)-类别：</i>
						<select  id="type-select">
							<option value="0">--请选择--</option>
							<c:forEach items="${types }" var="type">
								<option <c:if test='${goods.goodsType.id == type.id}'>selected="selected"</c:if> value="${type.id}">${type.name }</option>
							</c:forEach>
						</select>
					</label>
				</div>
			</div>
			<div class="item">
				<div class="inputbox">
					<input type="text" hidden="hidden" id="gid">
					<label class="inputleft">
					<i class="opt-name">(必填)-名称：</i>
						<input class="inputright" type="text" id="gname"  value="${goods.name }">
					</label>
				</div>
			</div>		
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
					<i class="opt-name">(必填)-单价(RMB)：</i>
						<input class="inputright" type="text" id="gprice" value="${goods.price }">
					</label>
				</div>
			</div>					
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">(必填)-数量：</i>
						<input class="inputright" type="text" id="gqty" value="${goods.quantity }">
					</label>
				</div>
			</div>	
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">(必填)-单位：</i>
						<select  id="unit-select">
							<option value="0">--请选择--</option>
							<c:forEach items="${units }" var="unit">
								<option <c:if test='${goods.unit.id == unit.id}'>selected="selected"</c:if> value="${unit.id}">${unit.name }</option>
							</c:forEach>
						</select>
					</label>
				</div>
			</div>				
			<div class="item">
				<div class="inputbox" style="width:802px">
					<label class="inputleft">
						<i class="opt-name">(必填)-商品描述：</i>
						<input class="inputright" type="text" id="gdescription" value="${goods.description }">
					</label>
				</div>
			</div>	
		</div>
		<!-- 上传商品图片 开始  -->
		<div class="p-items">
			<div class="i-title fs18">上传预览</div>
			<div class="gimgbox">
				<img src="<c:choose>
							<c:when test="${goodsImg.cover == 1}">../resource/${goodsImg.img_url }</c:when>
							<c:otherwise>../images/led.png</c:otherwise>
						</c:choose>" width="100%" id="gmainimg">
			</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">
						<i class="opt-name">商品展示主图：</i>
						<input class="inputright" type="text" id="filename1" value="<c:if  test="${goodsImg.cover ==1 }">${goodsImg.img_url } </c:if> ">
						<a href="javascript:void(0);"  class="uploadbtn text-def" id="uploadbtn1">上传图片</a>
					</label>
				</div>
			</div>			
		</div>
		<!-- 上传商品图片 结束 -->
		<!-- 销售属性 开始  -->
		<div class="p-items">
			<div class="i-title fs18">销售属性</div>
			<div class="item">
				<i class="opt-name">库存扣减方式：</i>
				<label class="downbox"><input type="radio" name="downtype" value="0"  <c:if test="${goods.downtype == 0 || goods.downtype==null }"> checked="checked"</c:if> ><span class="downtext">预定扣库存</span></label>
				<label class="downbox"><input type="radio" name="downtype"  value="1"  <c:if test="${goods.downtype == 1 }"> checked="checked"</c:if>><span class="downtext">付款扣库存</span></label>
			</div>
		</div>		
		<!-- 销售属性 结束 -->
		<div class="p-items" id="saveBtn">
			<div class="i-title">提交信息</div>
			<div class="p-button ml190">
				<a href="javascript:void gcreate();" class="button fs15">保存商品</a>
				<!-- <a href="javascript:void grelease();" class="button fs15">保存并发布商品</a> -->
			</div>			
		</div>
	</div>
<div id="console"></div>
	<script type="text/javascript">
		/* 图片1上传 */
		 $.tzUpload({
				targetId:"uploadbtn1",
				url:getRootPath()+"/upload/myupload",
				size:"10 MB",
				data:{"dir":"goods","oldFineName":$("#gmainimg").attr("src").replace("goods/")},
				single:false,
				callback:function(data){
					var jdata = eval("("+data+")");
					if(jdata.success){
						$("#filename1").attr("value",jdata.result.url);
						$("#gmainimg").attr("src",getRootPath()+"/resource/"+jdata.result.url);
					}else{
						messageBox("很抱谦,文件上传失败!");
					}
				}
			});
		/** 添加商品 */
		function gcreate(){
			 var typeId = $("#type-select").val();
			 if(parseInt(typeId) == 0){
				 messageBox("请选择相应的商品类别!");
				 return false;
			 }
			 var name = $("#gname").val();
			 if(isEmpty(name)){
				 messageBox("请选择相应的商品名称!");
				 return false;
			 }
			 var price = $("#gprice").val();
			 if(isNaN(price) || parseInt(price) < 0){
				 messageBox("请选择相应的商品单价!");
				 return false;
			 }
			 var qty = $("#gqty").val();
			 if(isNaN(qty) || parseInt(qty) < 0){
				 messageBox("请选择相应的商品单价!");
				 return false;
			 }	
			 var unitId = $("#unit-select").val();
			 if(parseInt(unitId) == 0){
				 messageBox("请选择相应的商品单位!");
				 return false;
			 }
			 var description = $("#gdescription").val();
			 var mainImg = $("#filename1").val();
			 var downtype =  $("input:radio[name='downtype']:checked").val();
			 var params = {
			 	 "id":$("#gid").val(),
			 	 "name":name,
			 	 "typeId":typeId,
			 	 "price":price,
			 	 "qty":qty,
			 	 "description":description,
			 	 "mainImg":mainImg,
			 	 "downtype":downtype,
			 	 "unitId":unitId
			 };
			 $.ajax({
				 url:getRootPath()+"/goods/create",
				 type:"post",
				 data:params,
				 success:function(response){
					 if(response.success){
						 messageBox("恭喜您,商品保存成功! ( 编码:"+response.result.goods.code+" )");
					 }else{
						 messageBox("抱歉,商品保存失败!");
					 }
				 }
			 });
		 };
		
		/* 添加商品 */
		function greset(){
			location.reload(true);
		};

   	</script>
</body>
</html>
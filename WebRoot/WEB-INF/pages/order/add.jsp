<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶社 - 创建订单</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
<meta name="expires" content="0">
<meta name="keywords"
	content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
<meta name="description" content="惠宇茶舍网上订座">
<%@include file="../../../include.jsp"%>
<style type="text/css">
body {

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
	height:620px;
	background:#fafafa;
	margin:0 auto;
	padding:30px 0px;
	border:1px solid #fafafa;
	margin-bottom:30px;

}

.panel .p-title {
	padding-left:20px;
}

.panel .p-items {
	width:1000px;
	height:310px;
	margin:0 auto;
}

.panel .p-items .i-title {
	width:980px;
	height:40px;
	background:#f3f3f3;
	line-height:50px;
	padding-left:20px;
	margin-bottom:15px;
}

.panel .p-items .item {
	width:900px;
	line-height:35px;
	margin:0 auto;
	padding-top:10px;
}

.panel .p-items .item .inputbox {
	width:460px;
	border:1px solid #ddd;
	height:35px;
	margin-bottom:10px;
}

.panel .p-items .item .inputbox label{
	text-align:right;
}
.panel .p-items .item .inputbox .inputleft {
	display:block;
	padding-left:15px;
}

.panel .p-items .item .inputbox .inputright {
	width:315px;
	padding: 0 5px;
	height:35px;
	border:none;
	border-left:1px solid #ddd;
}
.panel .p-items .item .inputbox{
	float:left;
}

.panel .p-items .item .inputbox,.uploadbtn{
	float:left;
}

.panel .p-items .item .uploadbtn{
	width:80px;
	height:35px;
	margin-left:15px;
	border:1px solid #ddd;
	text-align:center;
	line-height:35px;
	font-size:12px;
}

.panel .p-button {
	width:1000px;
	height:60px;
	margin:0 auto;
	background:#fafafa;
}

.panel .p-button .button {
	width:120px;
	height:40px;
	margin-left:100px;
	line-height:40px;
	color:#fff;
	text-align:center;
	display:block;
	background:#1CBD9D;
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
				<li><a href="javascript:void(0);" class="nav-title active">管理订单</a></li>
				<li><a href="${basePath }order/edit.jxp" class="nav-title">查询订单</a></li>
				<li><a href="javascript:void(0);" class="nav-title"  style="color:orange">添加订单</a></li>
				<li><a href="${basePath }order/setting.jxp" class="nav-title">设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<div class="p-title fs18"><span class="iconfont">&#xe654;</span> 添加订单</div>
		<div class="p-items">
			<div class="i-title">订单信息</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">(必选)-订单类别：
						<select class="inputright" style="width:325px">
							<option>--请选择--</option>
							<option>普通订单</option>
							<option>预留订单</option>
							<option>手工订单</option>
						</select>
					</label>
				</div>
			</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">(必填)-会员名：
						<input class="inputright" type="text">
					</label>
				</div>
			</div>		
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">(必填)-商品单价：
						<input class="inputright" type="text">
					</label>
				</div>
			</div>					
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">(必填)-商品数量：
						<input class="inputright" type="text">
					</label>
				</div>
			</div>	
			<div class="item">
				<div class="inputbox" style="width:802px">
					<label class="inputleft">(必填)-商品描述：
						<input class="inputright" type="text" style="width:657px">
					</label>
				</div>
			</div>	
									
		</div>
		<div class="p-items" style="height:180px">
			<div class="i-title">上传预览</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">商品图片：
						<input class="inputright" type="text" id="filename1">
					</label>
				</div>
				<input type="file" hidden="hidden" id="upload1">
				<a href="javascript:void(0);"  class="uploadbtn text-def" id="uploadbtn1">上传图片</a>
			</div>
			<div class="item">
				<div class="inputbox">
					<label class="inputleft">商品图片：
						<input class="inputright" type="text" id="filename2">
					</label>
				</div>
				<input type="file" hidden="hidden" id="upload2">
				<a href="javascript:void(0);" class="uploadbtn text-def" id="uploadbtn2">上传图片</a>
			</div>			
		</div>
		<div class="p-items" style="height:100px;">
			<div class="i-title">提交信息</div>
			<div class="p-button">
				<a href="javascript:void(0);" class="button">保存商品</a>
			</div>
		</div>
	</div>
	
	<!-- 脚部信息  开始 -->
    <%@include file="../../../footer.jsp" %>
    <!-- 脚部信息  结束 -->

	<script type="text/javascript">

   	</script>
</body>
</html>
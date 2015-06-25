<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 后台管理平台</title>
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
	height:500px;
	background:#fafafa;
	margin:0 auto;
	padding-top:30px;
}

.panel .p-items {
	width:900px;
	height:150px;
	border:1px solid #f0f0f0;
	margin:0 auto;
}

.panel .p-items .p-title {
	width:890px;
	height:50px;
	background:#f3f3f3;
	line-height:50px;
	padding-left:10px;
}

.panel .p-items .item {
	width:900px;
	line-height:40px;
	padding-left:30px;
}

</style>
</head>

<body>
	<%@include file="header.jsp"%>
	<!-- 后台导航 开始 -->
	<div class="nav">
		<div class="nav-box">
			<ul>
				<li class="bg-orange"><a href="javascript:void(0);">首页</a></li>
				<li><a href="${basePath }goods/add"  class="nav-title">商品管理</a></li>
				<li><a href="${basePath }order/edit.jxp" class="nav-title">订单管理</a></li>
				<li><a href="javascript:void(0);" class="nav-title">客户管理</a></li>
				<li><a href="javascript:void(0);" class="nav-title">系统设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<div class="p-items">
			<div class="p-title fs16 text-def">今日订单</div>
			<div class="item">
				<a href="javascript:void(0);">暂无新信息</a>
			</div>
		</div>
		<div class="p-items">
			<div class="p-title fs16 text-def">今日交易额</div>
			<div class="item">
				<a href="javascript:void(0);">暂无新信息</a>
			</div>			
		</div>		
		<div class="p-items">
			<div class="p-title fs16 text-def">会员</div>
			<div class="item">
				<a href="javascript:void(0);">暂无新信息</a>
			</div>			
		</div>			
	
	</div>
	
	
	<script type="text/javascript">

   	</script>
</body>
</html>
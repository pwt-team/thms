<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 订单支付</title>
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

.order-nav {
	width: 100%;
	height: 60px;
	background: #646464;
}

.o-nav-box {
	width: 1000px;
	height: 60px;
	margin: 0 auto;
}

.o-nav-box ul li {
	list-style: none;
	float: left;
	padding: 0 30px;
}

.o-nav-box .o-nav-title {
	color: #fff;
	font-size: 18px;
	line-height: 60px;
	display: block;
}

.order-info {
	width: 1000px;
	background: #f3f3f3;
	border: 1px solid #ccc;
	margin: 30px auto;
}

.o-info-title {
	line-height: 70px;
	padding-left: 50px;
	border-bottom: 1px solid #ddd;
}

.o-info-title a {
	font-size: 20px;
	color: #1CBD9D;
	display: block;
}

.order-info .o-info-list{
	width: 1000px;
	margin: 0 auto;
	background: #fafafa;
	padding-bottom: 40px;
}

.order-info .o-info-list .o-i-items {
	width: 800px;
	margin: 0 auto;
	padding-top:20px;
}


.order-info .o-info-list .o-i-items .o-item {
	width: 400px;
	height:35px;
	margin-bottom:5px;
	border:1px solid #f0f0f0;
	line-height:35px;
}

.order-info .o-info-list .o-i-items .o-item a,span{
	float:left;
	color:#fff;
}

.order-info .o-info-list .o-i-items .o-item .hander {
	width:100px;
	height:35px;
	display:block;
	background:#1CBD9D;
	text-align:right;
	padding-right:10px;
	margin-right:10px;
}
.order-info .o-info-list .g-s-box {
	width:1000px;
	background: #fafafa;
}

.order-info .o-info-list .g-s-box .g-s-item{
	padding-top:30px;
	width:800px;
	height:35px;
	margin:0 auto;
}
.order-info .o-info-list .g-s-box .g-s-item a {
	width:150px;
	height:40px;
	line-height:40px;
	text-align:center;
	background:#1CBD9D;
	display:block;
	color:#fff;
}

</style>
</head>

<body>
	<%@include file="../home/header.jsp"%>
	<!-- 导航 -->
	<div class="order-nav">
		<div class="o-nav-box">
			<ul>
				<li class="bg-orange"><a href="${basePath }home.jsp"
					class="o-nav-title">首页</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">1.确认订单信息</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">2.选择支付方式</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">3.确认支付</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">4.订单下达成功</a></li>
			</ul>
		</div>
	</div>

	<!-- 预约产品信息 -->
	<div class="order-info">
		<div class="o-info-title">
			<a href="javascript:void(0);" class="">1.确认订单信息</a>
		</div>
		<div class="o-info-list pt10">
			<div class="o-i-items">
				<div class="o-item">
					<a href="javascript:void(0);" class="text-orange fs16 hander">订单编号</a>
					<span class="text-orange fs16" id="orderId"> 8602309203</span>
				</div>
				<div class="o-item">
					<a href="javascript:void(0);" class="text-orange fs16 hander"> 消费金额</a>
					<span class="text-orange fs16" id="orderMoney">23232.00</span>
				</div>
				<div class="o-item">
					<a href="javascript:void(0);" class="text-orange fs16 hander"> 支付帐号</a>
					<span class="text-orange fs16" id="orderMoney">pay@hyteahouse.com</span>
				</div>				
			</div>
			<div class="g-s-box">
				<div class="g-s-item fs18">
					<a href="javascript:void(0);">提交订单</a>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../home/footer.jsp"%>

	<script type="text/javascript">

   	</script>
</body>
</html>
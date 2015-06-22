<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 订单信息</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
<meta name="expires" content="0">
<meta name="keywords"
	content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
<meta name="description" content="惠宇茶舍网上订座">
<%@include file="../../../include.jsp"%>
<link rel="stylesheet" type="text/css" href="${basePath}js/sg/css/tz-page.css">
<script type="text/javascript" src="${basePath}js/sg/tz_page.js"></script>
<link>
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
	height:60px;
	line-height:60px;
	color:#fff;
}

.nav .nav-box ul li a {
	width:95px;
	color:#fff;
	display:block;
	font-size:16px;
	text-align:center;
}

.panel {
	width:1000px;
	background:#fafafa;
	margin:0 auto;
	padding:30px 0px;
	margin-bottom:30px;
}
.panel .po-items {
	width:900px;
	font-size:14px;
/* 	border:1px solid #ddd;
	border-bottom:1px solid transparent; */
	margin:0 auto;
}
.panel .po-items .po-item-title {
	height:40px;
	background:#ddd;
	line-height:40px;
	padding-left:15px;
	font-size:14px;
}
.panel .po-items .po-item-title .iconfont{
	padding-right:5px;
}
.panel .po-items table tbody tr {
	height:45px;
	line-height:30px;
	font-size:12px;
} 
.panel .po-items table tbody tr i,span {
	float:left;
}
.panel .po-items table tbody tr i {
	width:80px;
	display:block;
	text-align:right;
} 
.panel .po-items .po-item {
	width:830px;
	padding-top:10px;
} 
.panel .po-items .po-item table thead tr {
	border-bottom:1px solid #ddd;
	height:35px;
} 
.panel .po-items .po-item table tbody tr {
	height:30px;
} 
.panel .po-items .po-item table tbody .item-s {
	background:rgba(28, 189, 157, 0.1);
}
.panel .po-items .po-item table tbody .item-t {
	height:45px;
	line-height:45px;
	font-size:16px;
}
.panel .po-items .po-item .item-total {
	height:20px;
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
				<li><a href="${basePath }order/add.jxp" class="nav-title">添加订单</a></li>
				<li><a href="${basePath }order/setting.jxp" class="nav-title">设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 订单信息列表 -->
	<div class="panel">
		<!-- 客户信息  开始 -->
		<div class="po-items">
			<div class="po-item-title"><i class="iconfont">&#xe61c;</i>客户信息</div>
			<table>
				<thead>
					<tr>
						<th style="width:250px"></th>
						<th style="width:400px"></th>
						<th style="width:250px"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="pl20"><i>妮称：</i><span>老头</span></td>
						<td><i>真实姓名：</i><span>袁忠</span></td>
						<td><i>性别：</i><span>男</span></td>
					</tr>
					<tr>
						<td class="pl20"><i>所在城市：</i><span>广东 惠州</span></td>
						<td><i>详细地址：</i><span>广东省惠州市惠城区上马庄上二老村35号方友科技有限公司</span></td>
						<td><i>邮编：</i><span>516000</span></td>
					</tr>	
					<tr>
						<td class="pl20"><i>联系电话：</i><span>13719688765</span></td>
						<td><i>QQ：</i><span>1212121321</span></td>
						<td><i>email：</i><span>nj21wdadadlkiji@126.com</span></td>
					</tr>										
				</tbody>
			</table>
		</div>
		<!-- 客户信息  结束 -->
		<!-- 订单信息  开始 -->
		<div class="po-items">
			<div class="po-item-title"><i class="iconfont">&#xe627;</i>订单信息</div>
			<table>
				<thead>
					<tr>
						<th style="width:250px"></th>
						<th style="width:400px"></th>
						<th style="width:250px"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="pl20"><i>订单日期：</i><span>2015-06-12</span></td>
						<td><i>确认时间：</i><span>2015-06-13 23:11:11</span></td>
						<td><i>付款时间：</i><span>2015-06-13 23:14:11</span></td>
					</tr>
					<tr>
						<td class="pl20"><i>状态：</i><span>交易成功</span></td>
						<td><i>支付交易号：</i><span>201506022100100189023207985</span></td>
						<td><i>支付方式：</i><span>支付宝</span></td>
					</tr>	
				</tbody>
			</table>
		</div>	
		<!-- 订单信息  结束 -->
		<!-- 商品信息  开始 -->
		<div class="po-items">
			<div class="po-item-title"><i class="iconfont">&#xe618;</i>商品信息</div>
			<div class="po-item pl40">
				<table>
					<thead>
						<tr>
							<th style="width:80px">序号</th>
							<th style="width:400px">商品名称</th>
							<th style="width:150px">单价</th>
							<th style="width:120px">数量</th>
							<th style="width:150px">金额</th>
						</tr>
					</thead>
					<tbody>
						<tr class="item-s">
							<td>1</td>
							<td>舒适大房 450$</td>
							<td>450.00元</td>
							<td>1</td>
							<td>450.00元</td>
						</tr>
						<tr class="item-d">
							<td>2</td>
							<td>舒适大房 450$</td>
							<td>450.00元</td>
							<td>1</td>
							<td>450.00元</td>
						</tr>	
						<tr class="item-s">
							<td>3</td>
							<td>舒适大房 450$</td>
							<td>450.00元</td>
							<td>1</td>
							<td>450.00元</td>
						</tr>
						<tr class="item-t">
							<td colspan="4" style="text-align:center">Total</td>
							<td>450.00元</td>
						</tr>												
					</tbody>
				</table>
				<div class="item-total"></div>
			</div>
		</div>	
		<!-- 商品信息  结束 -->
		
		<!-- 提示框组件 开始 -->
		<div id="tzDialog"></div>
		<!-- 提示框组件 结束 -->
	</div>
	<!-- 列表信息结束  -->
	
	<!-- 脚部信息  开始 -->
    <%@include file="../../../footer.jsp" %>
    <!-- 脚部信息  结束 -->

	<script type="text/javascript">
	
   	</script>
</body>
</html>
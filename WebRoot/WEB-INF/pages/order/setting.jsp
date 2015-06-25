<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 商品设置</title>
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
	background:#fafafa;
	margin:0 auto;
	padding:30px 0px;
	border:1px solid #fafafa;
	padding-bottom:30px;
}

.panel .p-box {
	width:900px;
	margin:0 auto;
	pdding-bottom:30px;
}
.panel .p-box .p-tabs {
	width:900px;
	height:40px;
	background:#ddd;
	border:1px solid #ddd;
	border-bottom:transparent;		
}
.panel .p-box .p-tabs ul li {
	float:left;
	width:100px;
	height:38px;
	line-height:38px;
	margin-top:2px;
	text-align:center;
	font-size:14px;
}
.panel .p-box .p-tabs .currentab {
	border-left:1px solid #ddd;
	border-right:1px solid #ddd;
	background:#fff;
}
.panel .p-box .p-itembox {
	width:900px;
	height:auto;
	border:1px solid #ddd;
	border-top:transparent;
	background:#fff;
	padding-top:30px;
}
.panel .p-box .p-itembox .p-items {
	height:40px;
}
.panel .p-box .p-itembox .p-items label {
	display:block;
	margin-right:10px;
}

.panel .p-box .p-itembox .p-items input {
	width:200px;
}
.panel .p-box .p-itembox .p-items label,#submit {
	float:left;
} 
.panel .p-box .p-itembox .p-items #submit {
	width:80px;
	height:31px;
	display:block;
	background:#ddd;
	line-height:31px;
	text-align:center;
}

.panel .p-box .p-itembox .p-table {
	width:300px;
	margin-top:20px;
}
.panel .p-box  .p-itembox .p-table table {
	width:300px;
	border:1px solid #ddd;
	margin-bottom:20px;
}
.panel .p-box  .p-itembox .p-table table th,td{
	text-align:center;
	border:1px solid #ddd;
}
.panel .p-box  .p-itembox .p-table table tr{
	line-height:35px;
	border-bottom:1px solid #ddd;
}
.panel .p-box  .p-itembox  .p-table table thead {
	height:35px;
	background:#f3f3f3;
	line-height:35px;
}
.panel .p-box  .p-itembox .p-table .edit,.delete {
	width:50px;
	height:35px;
	cursor:pointer;
	margin:0 10px;
}

</style>
</head>

<body>
	<%@include file="../home/header.jsp"%>
	<!-- 后台导航 开始 -->
	<div class="nav">
		<div class="nav-box">
			<ul>
				<li class="bg-orange"><a href="${basePath }admin/admin.jxp">首页</a></li>
				<li><a href="javascript:void(0);" class="nav-title active">管理订单</a></li>
				<li><a href="${basePath }order/edit.jxp" class="nav-title">查询订单</a></li>
				<li><a href="${basePath }order/add.jxp" class="nav-title">添加订单</a></li>
				<li><a href="javascript:void(0);" class="nav-title" style="color:orange">设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<div class="p-box">
			<div class="p-tabs selnone">
				<ul>
					<li class="currentab">订单类型</li>
				</ul>
			</div>
			<div class="p-itembox">
				<div class="p-items">
					<label><span class="pdleft20">类别名称：</span><input class="textinput" type="text"></label>
					<a href="javascript:void(0);" id="submit">保存</a>
				</div>
			
				<div class="p-table pdleft20">
					<table>
						<thead>
							<tr>
								<th style="width:60px">序号</th>
								<th style="width:120px">类型</th>
								<th style="width:120px">状态</th>
								<th style="width:150px">操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>普通订单</td>
								<td>正常</td>
								<td><span class="edit">编辑</span><span>|</span><span class="delete">删除</span></td>
							</tr>
							<tr>
								<td>2</td>
								<td>预售订单</td>
								<td>正常</td>
								<td><span class="edit">编辑</span><span>|</span><span class="delete">删除</span></td>
							</tr>						
							<tr>
								<td>3</td>
								<td>电话订单</td>
								<td>正常</td>
								<td><span class="edit">编辑</span><span>|</span><span class="delete">删除</span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div id="tab"></div>

	<script type="text/javascript">
		$(".p-tabs").find("li").on("click",function(){
			$(this).addClass("currentab").siblings().removeClass("currentab");
		});
   	</script>
</body>
</html>
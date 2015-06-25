<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 管理订单</title>
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
	border:1px solid #fafafa;
	margin-bottom:30px;
}
.panel .p-top {
	width:900px;
	height:60px;
	margin:0 auto;
	font-size:14px;
	margin-top:20px;
}

.panel .p-top .searchtype,.searchbox {
	float:left;
}

.panel .p-top .searchtype,.searchstatus {
	width:175px;
	float:left;
	margin-top:10px;
}
.panel .p-top .searchbox {
	width:490px;
	margin-top:10px;
}
.panel .p-top .searchbox #starttime,#endtime {
	width:115px;
	border:none;
	padding:0px 10px;
	border:1px solid #ccc;
	height:28px;
	font-size:12px;
}
.panel .p-top .searchbox #searchgo {
	width:50px;
	height:30px;
	display:block;
	background:#ddd;
	font-size:14px;
	line-height:30px;
	padding:0px 10px;
}
.panel .p-top .searchbox #starttime {
	margin-right:10px;
}
.panel .p-top .searchbox label,a {
	float:left;
}

.panel .p-top .searchbox input[type="date"] {
	line-height:30px;
}

.panel .p-top .searchtype #ordertype,#orderstatus {
	width:100px;
	height:30px;
	padding:3px;
}
.panel .p-items {
	width:890px;
	margin:0 auto;
}
.panel .p-items table {
	font-size:13px;
}

.panel .p-items table th {
	background:#f3f3f3;
}

.panel .p-items table th,td {
	border:1px solid #ddd;
	text-align:center;
	height:35px;
}

.panel .p-items table td i {
	padding:0px 5px;
	font-size:10px;
}
.panel .p-items table tbody .edit,.delete,.line {
	float:left;
}
.panel .p-items table tbody .edit,.delete {
	width:30px;
}
.panel .paging {
	width:900px;
	height:35px;
	margin:0 auto;
	position:relative;
}

.panel .p-items table tbody .orderNo {
	width:150px;
	display:block;
	text-align:center;
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
				<li><a href="${basePath }order/edit.jxp" class="nav-title" style="color:orange">查询订单</a></li>
				<li><a href="${basePath }order/add.jxp" class="nav-title">添加订单</a></li>
				<li><a href="${basePath }order/setting.jxp" class="nav-title">设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<!-- 搜索部分 -->
		<div class="p-top">
			<div class="searchtype">
				<label>订单类型 : <select id="ordertype">
					<option value="1">普通订单</option>
					<option value="2">预售订单</option>
					<option value="3">电话订单</option>
				</select></label>
			</div>
			<div class="searchstatus">
				<label>订单状态 : <select id="orderstatus">
					<option value="1">新订单</option>
					<option value="2">已确认</option>
					<option value="3">未付款</option>
					<option value="4">已付款</option>
					<option value="5">完成</option>
				</select></label>
			</div>			
			<div class="searchbox">
				<label>起始日期 : <input type="date" id="starttime" name="starttime"></label>
				<label>结束日期 : <input type="date" id="endtime" name="endtime"></label>
				<a href="javascript:void(0);" class="iconfont" id="searchgo">&#xe65b;<span> 搜索</span></a>
			</div>
		</div>
		<!-- 列表部分 -->
		<div class="p-items">
			<table>
				<thead>
					<tr>
						<th style="width:40px;">选择</th>
						<th style="width:150px">订单编号</th>
						<th style="width:100px">类别</th>
						<th style="width:200px">订单时间</th>
						<th style="width:100px">会员</th>
						<th style="width:100px">金额</th>
						<th style="width:90px">状态</th>
						<th style="width:100px">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="javascript:void(0);" class="orderNo">HY0000000001</a></td>
						<td>普通订单</td>
						<td>2015-05-30 12:12:12</td>
						<td>老头</td>
						<td>13131.12</td>
						<td>已付款</td>
						<td><a href="javascript:void(0);" class="iconfont edit" title="编辑">&#xe64f;</a><i class="line">|</i><a href="javascript:void(0);" class="iconfont delete" title="删除">&#xe693;</a></td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="javascript:void(0);" class="orderNo">HY0000000001</a></td>
						<td>普通订单</td>
						<td>2015-05-30 12:12:12</td>
						<td>老头</td>
						<td>13131.12</td>
						<td>已付款</td>
						<td><a href="javascript:void(0);" class="iconfont edit" title="编辑">&#xe64f;</a><i class="line">|</i><a href="javascript:void(0);" class="iconfont delete" title="删除">&#xe693;</a></td>
					</tr>	
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="javascript:void(0);" class="orderNo">HY0000000001</a></td>
						<td>普通订单</td>
						<td>2015-05-30 12:12:12</td>
						<td>老头</td>
						<td>13131.12</td>
						<td>已付款</td>
						<td><a href="javascript:void(0);" class="iconfont edit" title="编辑">&#xe64f;</a><i class="line">|</i><a href="javascript:void(0);" class="iconfont delete" title="删除">&#xe693;</a></td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="javascript:void(0);" class="orderNo">HY0000000001</a></td>
						<td>普通订单</td>
						<td>2015-05-30 12:12:12</td>
						<td>老头</td>
						<td>13131.12</td>
						<td>已付款</td>
						<td><a href="javascript:void(0);" class="iconfont edit" title="编辑">&#xe64f;</a><i class="line">|</i><a href="javascript:void(0);" class="iconfont delete" title="删除">&#xe693;</a></td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="javascript:void(0);" class="orderNo">HY0000000001</a></td>
						<td>普通订单</td>
						<td>2015-05-30 12:12:12</td>
						<td>老头</td>
						<td>13131.12</td>
						<td>已付款</td>
						<td><a href="javascript:void(0);" class="iconfont edit" title="编辑">&#xe64f;</a><i class="line">|</i><a href="javascript:void(0);" class="iconfont delete" title="删除">&#xe693;</a></td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td><a href="javascript:void(0);" class="orderNo">HY0000000001</a></td>
						<td>普通订单</td>
						<td>2015-05-30 12:12:12</td>
						<td>老头</td>
						<td>13131.12</td>
						<td>已付款</td>
						<td><a href="javascript:void(0);" class="iconfont edit" title="编辑">&#xe64f;</a><i class="line">|</i><a href="javascript:void(0);" class="iconfont delete" title="删除">&#xe693;</a></td>
					</tr>														
				</tbody>
			</table>
		</div>
		<!-- 列表信息结束  -->
		<div class="paging">
			<div id="tzPage"></div>
		</div>
		<div id="tzDialog"></div>
	</div>
	
	
	<!-- 脚部信息  开始 -->
    <%@include file="../home/footer.jsp" %>
    <!-- 脚部信息  结束 -->

	<script type="text/javascript">
		
		$(".orderNo").on("click",function(){
			window.location.href = "${basePath}order/page.jxp";
			
		});
	
 	$(function(){
		$("#tzPage").tzPage(100, {
			num_edge_entries : 1, //边缘页数
			num_display_entries :2, //主体页数
			num_edge_entries:2,
			current_page:0,
			showGo:false,
			showSelect:false,
			items_per_page : 2, //每页显示X项
			prev_text : "前一页",
			next_text : "后一页",
			callback : function(pageNo,psize){
				//tz_loadingTemplate(1,10);
			}
		});
	}); 
   	</script>
</body>
</html>
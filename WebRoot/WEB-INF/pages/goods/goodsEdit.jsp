<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 管理商品</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
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
	margin-bottom:30px;
}
.panel .p-top {
	width:900px;
	height:60px;
	margin:0 auto;
}

.panel .p-top .searchtype,.searchbox {
	float:left;
	height:30px;
	margin-top:10px;
}

.panel .p-top .searchtype {
	width:200px;
}
.panel .p-top .searchbox {
	width:390px;
	border:1px solid #ddd;
}
.panel .p-top .searchbox #searchinp {
	width:300px;
	border:none;
	padding:3px 10px;
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

.panel .p-top .searchbox #searchinp,#searchgo {
	float:left;
}

.panel .p-top .searchtype #goodstype {
	width:130px;
	height:31px;
	padding:3px;
}
.panel .p-items {
	width:900px;
	margin:0 auto;
}
.panel .p-items table {
	font-size:13px;
}

.panel .p-items table th {
	background:#f3f3f3;
}
.panel .p-items table tr {
	height:50px;
}
.panel .p-items table tr:hover  {
	background:#f3f3f3;
}
.panel .p-items table tr:hover .operation {
	display:block;
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

.panel .p-items table td img {
	width:64px;
	height:64px;
	padding:2px;
}
.panel .p-items table tr td .goodsname {
	display:block;
	cursor:pointer;
}
.panel .p-items table tr td .operation {
	display:none;
}
.panel .p-items table tr td .operation a {
	margin-right:8px;
}
.panel .p-items table tr td .inp-gdshot,.inp-gdsave {
	display:none;
}
.panel .paging {
	width:900px;
	height:35px;
	margin:0 auto;
	position:relative;
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
				<li><a href="${basePath }goods/add.jxp" class="nav-title">添加商品</a></li>
				<li><a href="javascript:void(0);" class="nav-title" style="color:orange">添加商品</a></li>
				<li><a href="${basePath }goodset/index" class="nav-title">设置</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<!-- 搜索部分 -->
		<div class="p-top">
			<div class="searchtype">
				<label>类型：<select id="goodstype">
					<option value="1">全部</option>
					<option value="2">茶房</option>
					<option value="3">茶叶</option>
					<option value="4">茶具</option>
					<option value="5">字画</option>
				</select></label>
			</div>
			<div class="searchbox">
				<input type="text" id="searchinp" name="searchinp"><a href="javascript:void(0);" class="iconfont" id="searchgo">&#xe65b;<span> 搜索</span></a>
			</div>
		</div>
		<!-- 列表部分 -->
		<div class="p-items">
			<table>
				<thead>
					<tr>
						<th style="width:40px;">选择</th>
						<th style="width:70px">类别</th>
						<th style="width:350px">名称</th>
						<th style="width:70px">单价</th>
						<th style="width:80px">上架数量</th>
						<th style="width:80px">库存数量</th>
						<th style="width:50px">状态</th>
						<th style="width:40px">热点</th>
						<th style="width:150px">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>茶房</td>
						<td><div class="goodsname">名称</div></td>
						<td>877</td>
						<td>121</td>
						<td>2323</td>
						<td>正常</td>
						<td>
							<div class="gdshot" >11</div>
							<input type="number" value="11" class="inp-gdshot" >
							<input type="button" value="保存" class="inp-gdsave">
						</td>
						<td>
							<div class="operation">
								<a href="javascript:void(0);" class="iconfont" title="编辑">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="下架">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="删除">&#xe693;</a>	
							</div>		
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>茶房</td>
						<td><div class="goodsname">名称</div></td>
						<td>877</td>
						<td>121</td>
						<td>2323</td>
						<td>正常</td>
						<td>
							<div class="gdshot" >11</div>
							<input type="number" value="11" class="inp-gdshot" >
							<input type="button" value="保存" class="inp-gdsave">
						</td>
						<td>
							<div class="operation">
								<a href="javascript:void(0);" class="iconfont" title="编辑">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="下架">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="删除">&#xe693;</a>	
							</div>						
						</td>
					</tr>	
					<tr>
						<td><input type="checkbox"></td>
						<td>茶房</td>
						<td><div class="goodsname">名称</div></td>
						<td>877</td>
						<td>121</td>
						<td>2323</td>
						<td>正常</td>
						<td>
							<div class="gdshot" >11</div>
							<input type="number" value="11" class="inp-gdshot" >
							<input type="button" value="保存" class="inp-gdsave">
						</td>
						<td>
							<div class="operation">
								<a href="javascript:void(0);" class="iconfont" title="编辑">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="下架">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="删除">&#xe693;</a>	
							</div>						
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>茶房</td>
						<td><div class="goodsname">名称</div></td>
						<td>877</td>
						<td>121</td>
						<td>2323</td>
						<td>正常</td>
						<td>
							<div class="gdshot" >11</div>
							<input type="number" value="11" class="inp-gdshot" >
							<input type="button" value="保存" class="inp-gdsave">
						</td>
						<td>
							<div class="operation">
								<a href="javascript:void(0);" class="iconfont" title="编辑">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="下架">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="删除">&#xe693;</a>	
							</div>							
						</td>						
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>茶房</td>
						<td><div class="goodsname">名称</div></td>
						<td>877</td>
						<td>121</td>
						<td>2323</td>
						<td>正常</td>
						<td>
							<div class="gdshot" >11</div>
							<input type="number" value="11" class="inp-gdshot" >
							<input type="button" value="保存" class="inp-gdsave">
						</td>
						<td>
							<div class="operation">
								<a href="javascript:void(0);" class="iconfont" title="编辑">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="下架">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="删除">&#xe693;</a>	
							</div>							
						</td>						
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>茶房</td>
						<td><div class="goodsname">名称</div></td>
						<td>877</td>
						<td>121</td>
						<td>2323</td>
						<td>正常</td>
						<td>
							<div class="gdshot" >11</div>
							<input type="number" value="11" class="inp-gdshot" >
							<input type="button" value="保存" class="inp-gdsave">
						</td>
						<td>
							<div class="operation">
								<a href="javascript:void(0);" class="iconfont" title="编辑">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="下架">&#xe64f;</a>
								<a href="javascript:void(0);" class="iconfont" title="删除">&#xe693;</a>	
							</div>						
						</td>
					</tr>														
				</tbody>
			</table>
		</div>
		<div class="paging">
			<div id="tzPage"></div>
		</div>
		<div id="tzDialog"></div>
	</div>
	

	<script type="text/javascript">
	
	//$(function(){
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
		
		$(".goodsname").on("click",function(){
			window.location.href = "${basePath}goods/add.jxp";
		});
	//});
   	</script>
</body>
</html>
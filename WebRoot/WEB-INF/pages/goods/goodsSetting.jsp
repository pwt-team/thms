<%@page import="com.thms.bean.Unit"%>
<%@page import="com.thms.bean.GoodsType"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 商品设置</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name="expires" content="0">
<meta name="keywords" content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
<meta name="description" content="惠宇茶舍网上订座">
<%@include file="../../../include.jsp"%>
<link rel="stylesheet" type="text/css" href="${basePath}js/sg/css/tz-page.css">
<script type="text/javascript" src="${basePath}js/sg/tz_page.js"></script>
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
	background:#f3f3f3;
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
	display:none;
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
.panel .p-box .p-itembox .p-items label,.submit {
	float:left;
} 
.panel .p-box .p-itembox .p-items .submit {
	width:90px;
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
.panel .p-box  .p-itembox  .p-table table tbody .gid {
	display:none;
}
.panel .p-box  .p-itembox  .p-table table tbody input[type="text"] {
	border:none;
	padding:0 10px;
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
	<%@include file="../../../header.jsp"%>
	<!-- 后台导航 开始 -->
	<div class="nav">
		<div class="nav-box">
			<ul>
				<li class="bg-orange"><a href="${basePath }admin/admin.jxp">首页</a></li>
				<li><a href="javascript:void(0);" class="nav-title active">商品管理</a></li>
				<li><a href="${basePath }goods/add" class="nav-title">添加商品</a></li>
				<li><a href="${basePath }goods/edit" class="nav-title">添加商品</a></li>
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
					<li class="currentab">商品类别</li>
					<li>单位</li>
				</ul>
			</div>
			<div>
			<!-- 商品类型 -->
			<div class="p-itembox">
				<div class="p-items">
					<label><span class="pdleft20">类别名称：</span><input class="textinput" type="text" id="typename"></label>
					<a href="javascript:void savetype();" class="submit" id="type-submit">保存</a>
				</div>
			
				<div class="p-table pdleft20">
					<table>
						<thead>
							<tr>
								<th style="width:60px">序号</th>
								<th style="width:120px">类别名称</th>
								<th style="width:150px">操作</th>
							</tr>
						</thead>
						<tbody id="typebody">
							<c:forEach items="${goodsTypes}" var="goodsType" varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td>
										<i class="gid">${goodsType.id }</i>
										<input type="text" class="gname" readonly="readonly" value ="${goodsType.name}" />
									</td>
									<td><span class="edit"  onclick="gedit(this)">编辑</span><span>|</span><span class="delete" onclick="gdelete(this);">删除</span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 单位设置 -->
			<div class="p-itembox">
				<div class="p-items">
					<label><span class="pdleft20">单位名称：</span><input class="textinput" type="text" id="unitname"></label>
					<a href="javascript:void saveunit(this);" class="submit" id="unit-submit">保存</a>
				</div>
			
				<div class="p-table pdleft20">
					<table>
						<thead>
							<tr>
								<th style="width:60px">序号</th>
								<th style="width:120px">单位名称</th>
								<th style="width:150px">操作</th>
							</tr>
						</thead>
						<tbody id="unitbody">
							<c:forEach items="${units}" var="unit" varStatus="status">
								<tr>
									<td>${status.count}</td>
									<td>
										<i class="gid">${unit.id }</i>
										<input type="text" class="uname" readonly="readonly" value ="${unit.name}" />
									</td>
									<td><span class="edit"  onclick="uedit(this)">编辑</span><span>|</span><span class="delete" onclick="udelete(this);">删除</span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</div>
		</div>
		
	</div>
	<div id="tab"></div>

	<script type="text/javascript">
		var uid = $("#myuid").data("uuid");
		$(function(){
			$(".p-itembox").eq(0).show();
			forbiddenSelect();
		});
	
		/** 切换选项卡 */
		$(".p-tabs").find("li").on("click",function(){
			var index = $(this).index();
			$(this).addClass("currentab").siblings().removeClass("currentab");
			$(".p-itembox").eq(index).show().siblings().hide();
		});
		
		/** 保存商品类型 */
		function savetype(){
			var name = $("#typename").val();
			if(isEmpty(name)){
				messageBox("请输入商品类型名称!");
				return false;
			};
			if(isEmpty(uid)){
				messageBox("非法用户,请重新登录后重试!");
				return false;
			};			
			$.ajax({
				url:getRootPath()+"/goodset/addtype",
				type:"post",
				data:{
					"uid":uid,
					"name":name,
				},
				success:function(response){
					if(response.success){
						formatType(response);
						$("#typename").val("");
						messageBox("恭喜您,添加成功！");
					};
				},
				error:function(){
					messageBox("保存失败！");
				}
			});
		};
		
		/** 编辑类别名称 */
		function gedit(obj){
			var editDom =$(obj); 
			var idDom = $(obj).parents("tr").find("i").text();
			var inputDom = $(obj).parents("tr").find("input");
			if(eqauls(editDom.text(), "编辑")){
				$(obj).text("保存");
				inputDom.removeAttr("readonly");
				inputDom.css({"color":"#096"});
				inputDom.select();
			}else{
				if(isEmpty(inputDom.val())){
					messageBox("商品类别的名称不能为空!");
					return false;
				}
				$.ajax({
					url:getRootPath()+"/goodset/addtype",
					type:"post",
					data:{
						"id":idDom,
						"name":inputDom.val()
					},
					success:function(response){
						if(response.success){
							$(obj).text("编辑");
							inputDom.attr("readonly",true);
							inputDom.css({"color":"#000"});	
							formatType(response);
							messageBox("恭喜您,修改成功！");
						};
					},
					error:function(){
						messageBox("保存失败！");
					}
				});
			}
		}
		
		/** 删除商品类别 */
		function gdelete(obj){
			confirmBox();
			return;
			var idDom = $(obj).parents("tr").find("i").text();
			$.ajax({
				url:getRootPath()+"/goodset/delType",
				type:"post",
				data:{"id":idDom},
				success:function(response){
					if(response.success){
						formatType(response);
						messageBox("恭喜您,删除成功！");
					};
				},
				error:function(){
					messageBox("保存失败！");
				}
			});
		}
		
		/** 格式化返回数据方法 */
		function formatType(response){
			var data = response.result.goodsType;
			$("#typebody").html("");
			var html="";
			for(var i = 0; i < data.length ; i++){
				html+="<tr>"+
					   "<td>"+(parseInt(i)+1)+"</td>"+
					   "<td><i class='gid'>"+data[i].id+"</i><input type='text' class='gname' readonly='readonly' value="+data[i].name+"></td>"+
					   "<td><span class='edit' onclick='gedit(this);'>编辑</span><span>|</span><span class='delete' onclick='gdelete(this);'>删除</span></td>"+
					   "</tr>";
			}
			$("#typebody").html(html);
		}
		
		/** 保存单位信息 */
		function saveunit(){
			var name = $("#unitname").val();
			if(isEmpty(name)){
				messageBox("请输入单位名称!");
				return false;
			};
			if(isEmpty(uid)){
				messageBox("非法用户,请重新登录后重试!");
				return false;
			};			
			$.ajax({
				url:getRootPath()+"/goodset/addunit",
				type:"post",
				data:{
					"uid":uid,
					"name":name,
				},
				success:function(response){
					if(response.success){
						formatUnit(response);
						$("#unitname").val("");
						messageBox("恭喜您,添加成功！");
					};
				},
				error:function(){
					messageBox("保存失败！");
				}
			});
		};
		
		/** 格式化返回数据方法 */
		function formatUnit(response){
			var data = response.result.units;
			$("#unitbody").html("");
			var html="";
			for(var i = 0; i < data.length ; i++){
				html+="<tr>"+
						"<td>"+(parseInt(i)+1)+"</td>"+
						"<td>"+
						"	<i class='gid'>"+data[i].id+"</i>"+
						"	<input type='text' class='uname' readonly='readonly' value ="+data[i].name+">"+
						"</td>"+
						"<td><span class='edit'  onclick='uedit(this)'>编辑</span><span>|</span><span class='delete' onclick='udelete(this);'>删除</span></td>"+
						"</tr>";
			}
			$("#unitbody").html(html);
		}
		
		
		/** 编辑类别名称 */
		function uedit(obj){
			var editDom =$(obj); 
			var idDom = $(obj).parents("tr").find("i").text();
			var inputDom = $(obj).parents("tr").find("input");
			if(eqauls(editDom.text(), "编辑")){
				$(obj).text("保存");
				inputDom.removeAttr("readonly");
				inputDom.css({"color":"#096"});
				inputDom.select();
			}else{
				if(isEmpty(inputDom.val())){
					messageBox("单位名称不能为空!");
					return false;
				}
				$.ajax({
					url:getRootPath()+"/goodset/addunit",
					type:"post",
					data:{
						"id":idDom,
						"name":inputDom.val()
					},
					success:function(response){
						if(response.success){
							$(obj).text("编辑");
							inputDom.attr("readonly",true);
							inputDom.css({"color":"#000"});	
							formatUnit(response);
							messageBox("恭喜您,修改成功！");
						};
					},
					error:function(){
						messageBox("保存失败！");
					}
				});
			}
		}
		
		/** 删除商品类别 */
		function udelete(obj){
			var idDom = $(obj).parents("tr").find("i").text();
			$.ajax({
				url:getRootPath()+"/goodset/delUnit",
				type:"post",
				data:{"id":idDom},
				success:function(response){
					if(response.success){
						formatUnit(response);
						messageBox("恭喜您,删除成功！");
					};
				},
				error:function(){
					messageBox("保存失败！");
				}
			});
		}
		
   	</script>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 添加商品</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name="expires" content="0">
<meta name="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta name="keywords" content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
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
	width: 100%;
	height: 60px;
	background: #646464;
	border-top: 5px solid #f0f0f0;
}

.panel {
	width: 1000px;
	height: 150px;
	margin: 0 auto;
}

.panel .user-info {
	width: 1000px;
	margin-top: 20px;
}

.panel .user-info .user-left,.user-right {
	float: left;
}

.panel .user-info .user-left {
	width: 250px;
	height: 120px;
	background: #fff;
	border-top-left-radius: 75px;
	border-bottom-left-radius: 75px;
}

.panel .user-info .user-right {
	width: 740px;
	height: 120px;
	background: #fff;
	margin-left: 10px;
}

.panel .user-info .user-left .user-face {
	width: 100px;
	height: 100px;
	boder: 1px solid #ddd;
	border-radius: 100px;
	margin-top: 10px;
	margin-left: 15px;
}

.panel .user-info .user-left .user-face,.user-name {
	float: left;
}

.panel .user-info .user-left .user-name {
	width: 100px;
	margin-top: 20px;
	margin-left: 30px;
	font-size: 15px;
}

.user-info .user-left .user-name .un-item {
	font-size: 13px;
	cursor: pointer;
}

.panel .user-order {
	width: 1000px;
}

.panel .user-order .uo-left,.uo-right {
	float: left;
	background: #fff;
	margin-top: 20px;
}

.panel .user-order .uo-left {
	width: 730px;
}

.panel .user-order .uo-left .uol-box {
	margin: 20px;
}

.uo-left .uol-box {
	padding-bottom: 30px;
}
.uo-left .uol-box .uo-title {
	font-size: 16px;
	color: #666;
}

.uo-left .uol-box .uol-item table {
	width: 100%;
	cellspacing: 0;
	cellpadding: 0;
	border: 0;
	text-align: center;
	font-size: 12px;
}

.uo-left .uol-box .uol-item table tr.hang {
	height: 90px;
	border-bottom: 1px solid #ddd;
	font-size:13px;
	cursor:pointer;
}

.uo-left .uol-box .uol-item table tr.hang:hover{
	background:#f0f0f0;
	color:#096;
}
.uo-left .uol-box table tr.myhang {
	height: 50px;
	font-size:13px;
}
.uo-left .uol-box table tr.myhang .ta-r {
	text-align:right;
}
.uo-left .uol-box table tr select,input[type="text"],input[type="button"],input[type="date"],input[type="password"] {
	height: 25px;
	padding:2px 5px;
	border-radius:3px;
}
.uo-left .uol-box table tr.myhang .mysex {
	margin-right:10px;
}
.uo-left .uol-box table tr.myhang input[type="radio"] {
	margin-right:5px;
}
.uo-left .uol-box table tr.myhang #myaddress {
	width:400px;
}
.uo-left .uol-box table tr.myhang #saveinfo,#saveinvoice,#savepassword {
	width:130px;
	height:35px;
	background:#f3f3f3;
	cursor:pointer;
	font-size:14px;
	color:#000;
}
.uo-left .uol-box table tr.myhang #myinvoice {
	height:30px;
	width:350px;
}
.uo-left .uol-box table tr.myhang #saveinfo:hover ,#saveinvoice:hover ,#savepassword:hover  {
	background:#ddd;
	color:#000;
}
.uo-left .uol-box table tr td.ta-r {
	
}
.uo-left .uol-box table tr.myhang #saveinvoice {
	margin-left:10px;
}
.panel .user-order .uo-right {
	width: 250px;
	height: 300px;
	margin-left: 20px;
}

.user-order .uo-right .uor-title {
	font-size: 16px;
	color: #666;
	text-align: center;
	border-bottom: 2px solid #ddd;
}

.user-order .uo-right .uor-title,.uor-item {
	margin: 20px;
}
.user-order .uo-right .uor-item ul li {
	line-height: 50px;
	text-align: center;
	font-size: 14px;
}
tr.myhang #fp-typebox {
	width:130px;
	text-align:left;
}
tr.myhang #fp-typebox .combox-inp {
	width:85px;
}
tr.myhang #fp-typebox .combox-list {
	width:97px;
	text-align:left;
}
tr.myhang #fp-typebox .combox-list ul li {
	width:87px;
}
</style>
</head>

<body>
	<%@include file="../home/header.jsp"%>
	<!-- 后台导航 开始 -->
	<div class="nav"></div>

	<div class="panel">
		<!-- 头部信息  开始-->
		<div class="user-info">
			<div class="user-left">
				<c:if test="${empty user.face }">
					<img class="user-face" id="myface" alt="${user.name }" src="${basePath}images/face_man.png" title="${user.name }"/>
				</c:if>
				<c:if test="${!empty user.face }">
					<img class="user-face" id="myface" alt="${user.name }" src="${basePath}resource/${user.face}"  title="${user.name }"/>
				</c:if>				
				<div class="user-name">
					<div class="un-item" title="${user.name}">${user.name }</div>
					<div class="un-item" title="${user.level}">注册会员</div>
					<div class="un-item">
						<div id="fileQueue"></div>
						<div id="uploadify" onclick="doUpload()"></div>
					</div>
				</div>
			</div>
			<div class="user-right"></div>

		</div>
		<!-- 头部信息  结束-->
		<!-- 订单信息  开始-->
		<div class="user-order">
			<div class="uo-left">
				<div class="uol-box">
					<div class="uo-title">
						<h3 id="myorder-title">我的订单</h3>
					</div>
					<div class="uol-items">
						<div class="uol-item">
							<table>
								<thead>
									<tr>
										<th style="width:40%"></th>
										<th style="width:15%"></th>
										<th style="width:20%"></th>
										<th style="width:15%"></th>
										<th style="width:10%"></th>
									</tr>
								</thead>
								<tbody>
									<tr class="hang">
										<td>商务舒适8人间商务舒适8人间商务舒适8人间</td>
										<td>234</td>
										<td>2015-06-23 11:11:11</td>
										<td>已结算</td>
										<td>详情</td>
									</tr>
									<tr class="hang">
										<td>商务舒适8人间商务舒适8人间商务舒适8人间</td>
										<td>234</td>
										<td>2015-06-23 11:11:11</td>
										<td>已结算</td>
										<td>详情</td>
									</tr>
									<tr class="hang">
										<td>商务舒适8人间商务舒适8人间商务舒适8人间</td>
										<td>234</td>
										<td>2015-06-23 11:11:11</td>
										<td>已结算</td>
										<td>详情</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- 我的信息 -->
				<div class="uol-box">
					<div class="uo-title">
						<h3 id="myinfo-title">我的信息</h3>
					</div>
					<div class="uol-items">
						<table>
							<thead>
								<tr>
									<th style='width:150px'></th>
									<th style='width:80%'></th>
								</tr>
							</thead>
							<tbody>
								<tr class="myhang">
									<td class="ta-r">妮称：</td>
									<td><input type="text" name="myname" value="${user.name}"></td>
								</tr>
								<tr class="myhang">
									<td class="ta-r">性别：</td>
									<td>
										<label class="mysex"><input type="radio" name="sex" <c:if test="${user.sex ==1}">checked='checked'</c:if> value="1">男</label>
										<label class="mysex"><input type="radio" name="sex" <c:if test="${user.sex ==2}">checked='checked'</c:if> value="2">女</label>
										<label class="mysex"><input type="radio" name="sex" <c:if test="${user.sex ==3}">checked='checked'</c:if> value="3">保密</label>
									</td>
								</tr>

								<tr class="myhang">
									<td class="ta-r">出生年月：</td>
									<td><input type="date" name="mybirthday"
										value="<fmt:formatDate value="${user.birthday }" pattern="yyyy-MM-dd"/>">
									</td>
								</tr>
								<tr class="myhang">
									<td class="ta-r">收货地址：</td>
									<td><input type="text" id="myaddress" name="myaddress" value="${user.address }"></td>
								</tr>
								<tr class="myhang">
									<td class="ta-r">绑定手机：</td>
									<td><input type="text" value="${user.phone }" name="myphone"></td>
								</tr>
								<tr class="myhang">
									<td class="ta-r"></td>
									<td><input type="button" id="saveinfo" value="保存" /></td>
								</tr>								
							</tbody>
						</table>
					</div>
				</div>
				<!-- 发票管理 -->
				<div class="uol-box">
					<div class="uo-title">
						<h3 id="myinvoice-title">发票管理</h3>
					</div>
					<div class="uol-items">
						<table>
							<thead>
								<tr>
									<th style='width:150px'></th>
									<th style='width:300px'></th>
									<th style='width:60px'></th>
								</tr>
							</thead>
							<tbody>
								<tr class="myhang">
									<td class="ta-r">
										<div class="mycombox" id="fp-typebox">
											<input type="text" class="combox-inp" id="invoiceShortName" value="${invoices[0].shortName }">
											<a href="javascript:void(0);" class="combox-drop" id="combox-drop">▼</a>
											<div class="combox-list">
												<ul>
													<li value="1">公司</li>
													<li value="1">个人</li>
													<li value="1">其它</li>
												</ul>
											</div>
										</div>									
									</td>
									<td>
										<div id="fp-namebox" class="mycombox">
											<input type="text" class="combox-inp" data-iid="${invoices[0].id }"  id="invoiceName"  value="${invoices[0].name }">
											<a href="javascript:void(0);" class="combox-drop" id="combox-drop">▼</a>
											<div class="combox-list">
												<ul>
													<c:forEach items="${invoices }" var ="invoice">
														<li value="${invoice.id }">${invoice.name }</li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</td>
									<td>
										<input type="button" id="saveinvoice" value="保存发票" />
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 修改密码 -->
				<div class="uol-box">
					<div class="uo-title">
						<h3 id="mypassword-title">修改密码</h3>
					</div>
					<div class="uol-items">
						<table>
							<thead>
								<tr>
									<th style='width:150px'></th>
									<th style='width:300px'></th>
									<th style='width:60px'></th>
								</tr>
							</thead>
							<tbody>
								<tr class="myhang">
									<td class="ta-r">原密码：</td>
									<td><input type="password" id="oldPwd" maxlength="24">&nbsp;&nbsp;*</td>
									<td></td>
								</tr>
								<tr class="myhang">
									<td class="ta-r">新密码：</td>
									<td><input type="password" id="newPwd" maxlength="24">&nbsp;&nbsp;*</td>
									<td></td>
								</tr>
								<tr class="myhang">
									<td class="ta-r">重复新密码：</td>
									<td><input type="password" id="reNewPwd" maxlength="24">&nbsp;&nbsp;*</td>
									<td></td>
								</tr>
								<tr class="myhang">
									<td class="ta-r"></td>
									<td><input type="button" id="savepassword" value="修改密码" /></td>
									<td></td>
								</tr>								
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 右侧导航 开始 -->
			<div class="uo-right">
				<div class="uor-title">
					<h3>导航</h3>
				</div>
				<div class="uor-item">
					<ul>
						<li><a href="#myorder-title">我的订单</a></li>
						<li><a href="#myinfo-title">我的信息</a></li>
						<li><a href="#myinvoice-title">发票管理</a></li>
						<li><a href="#mypassword-title">修改密码</a></li>
					</ul>
				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
	
		var uid = $("#myuid").data("uuid");
		 $.tzUpload({
				targetId:"uploadify",
				url:getRootPath()+"/upload/uploadface",
				size:"10 MB",
				data:{
					"dir":"user",
					"uid":uid,
					"oldName":$("#myface").attr("src")
					},
				single:false,
				callback:function(data){
					var jdata = eval("("+data+")");
					if(jdata.success == true){
						$("#myface").attr("src",getRootPath()+"/resource/"+jdata.result.url+"?"+new Date().getTime());
					}else{
						messageBox("很抱谦,头像上传失败！");
					}
				}
			});
		
		/* 修改个人信息 */
		$("#saveinfo").click(function(){
			var name = $("input[name='myname']").val();
			var sex = $("input[name='sex']:checked").val();
			var birthday = $("input[name='mybirthday']").val();
			var address = $("input[name='myaddress']").val();
			var phone = $("input[name='myphone']").val();
			if(isEmpty(name)){
				messageBox("操作失败,妮称不能为空!");return false;
			}
			if(isEmpty(phone)){
				messageBox("操作失败,手机号码不能为空!");return false;
			}
			var user = {
				"uid":uid,
				"name" :name,
				"sex" :sex,
				"birthday" :birthday,
				"address" :address,
				"phone" :phone
			};
			$.ajax({
				url:getRootPath()+"/user/edit",
				type:"post",
				data:user,
				success:function(response){
					messageBox("恭喜您,信息保存成功！");
				},
				error:function(){
					messageBox("抱歉,信息保存失败！");
				}
			});
		});
		
		/** 保存发票信息 */
		$("#saveinvoice").click(function(){
			var shortName = $("#invoiceShortName").val();
			var iname = $("#invoiceName").val();
			var id = $("#invoiceName").data("iid");
			if(isEmpty(iname)){
				messageBox("请输入您要保存的发票抬头名称!");
				return false;
			};
			if(isEmpty(uid)){
				messageBox("非法用户,请重新登录");
				return false;
			};			
			$.ajax({
				url:getRootPath()+"/invoice/save",
				type:"post",
				dataType:"json",
				data:{
					"uid":uid,
					"name":iname,
					"id":id,
					"shortName":shortName
				},
				success:function(response){
					if (response.success == true) {
						var data = response.data;
						$("#combox-inp").text(data[0].name);
						var comList = $("#combox-list");
						comList.html("");
						for (var i = 0; i < data.length; i ++) {
							comList.append("<li value='"+data[i].id+"'>"+data[i].name+"</li>");
						}
						messageBox("恭喜您,信息保存成功！");
					} else {
						messageBox(response.errorMsg);
					}
				},
				error:function(){
					messageBox("抱歉,信息保存失败！");
				}
			});
		});
		
		/** 修改密码 */
		$("#savepassword").click(function(){
			var op = $("#oldPwd").val();
			var np = $("#newPwd").val();
			var rp = $("#reNewPwd").val();
			if(isEmpty(op)){
				messageBox("错误,请输入原始密码！");
				return false;
			}
			if(isEmpty(np) || isEmpty(rp)){
				messageBox("错误,请输入您要修改的新密码！");
				return false;
			}
			if(!eqauls(np, rp)){
				messageBox("错误,两次输入的新密码不一致,请重新输入！");
				return false;
			}
			$.ajax({
				url:getRootPath()+"/user/upadtePwd",
				type:"post",
				data:{
					"uid":uid,
					"oldPwd":$.yzpwd.encode(op),
					"newPwd":$.yzpwd.encode(np)
				},
				success:function(response){
					if(response.success){
						var flag = response.result.flag;
						if(eqauls(flag, "success")){
							messageBox("恭喜您,密码修改成功!");
						}else if(eqauls(flag, "fail")){
							messageBox("修改失败,您输入的原始密码不正确!");
						}
					}
				},
				error:function(){
					messageBox("很抱谦,密码修改失败!");
				}
			});
		});
		
		/** COMBOBOX 通用事件 */
		$("#fp-namebox #combox-drop").click(function(e){
			$("#fp-namebox .combox-list").stop(true,true).slideToggle('fast');
			stopBubble(e);
		});

		$("#fp-namebox .combox-list").find("li").click(function(e){
			var v = $(this).attr("value");
			var t = $(this).text();
			$("#fp-namebox .combox-inp").val(t);
			$("#fp-namebox .combox-inp").data("id",v);
			$("#fp-namebox .combox-list").stop(true,true).slideUp('fast');
			stopBubble(e);
		});
		/** 给按钮增加点击效果 开始 */
		$("#fp-namebox #combox-drop").mouseup(function(e){
			$("#fp-namebox #combox-drop").css({"background":"none"});
			stopBubble(e);
		});
		$("#fp-namebox #combox-drop").mousedown(function(e){
			$("#fp-namebox #combox-drop").css({"background":"#f3f3f3"});
			stopBubble(e);
		});	
		
		/** COMBOBOX 通用事件 */
		$("#fp-typebox #combox-drop").click(function(e){
			$("#fp-typebox .combox-list").stop(true,true).slideToggle('fast');
			stopBubble(e);
		});

		$("#fp-typebox .combox-list").find("li").click(function(e){
			var v = $(this).attr("value");
			var t = $(this).text();
			$("#fp-typebox .combox-inp").val(t);
			$("#fp-typebox .combox-inp").data("id",v);
			$("#fp-typebox .combox-list").stop(true,true).slideUp('fast');
			stopBubble(e);
		});
		/** 给按钮增加点击效果 开始 */
		$("#fp-typebox #combox-drop").mouseup(function(e){
			$("#fp-typebox #combox-drop").css({"background":"none"});
			stopBubble(e);
		});
		$("#fp-typebox #combox-drop").mousedown(function(e){
			$("#fp-typebox #combox-drop").css({"background":"#f3f3f3"});
			stopBubble(e);
		});	
		
		/** 给按钮增加点击效果 结束 */
		$("body,html").click(function(e){
			$(".combox-list").stop(true,true).slideUp('fast');
			stopBubble(e);
		});

	</script>
</body>
</html>
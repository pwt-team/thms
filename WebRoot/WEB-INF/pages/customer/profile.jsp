<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶社 - 注册会员</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name="expires" content="0">
<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
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
	background:#fafafa;
	margin:0 auto;
	padding:30px 0px;
	border:1px solid #fafafa;
	margin-bottom:30px;

}
.panel .p-step {
	width:900px;
	height:45px;
	/* background:#ddd; */
	line-height:45px;
	margin:0 auto;
	border-bottom:2px solid #ddd;
}
.panel .p-step .curent {
	border-bottom:2px solid #096;
}
.panel .p-step ul li {
	float:left;
	width:20%;
	text-align:center;
	line-height:45px;
	font-size:16px;
}
.panel .p-box {
	width:800px;
	margin:30px auto;
}

.panel .p-box .p-regbox .p-reg-title {
	width:800px;
	height:40px;
	background:#f3f3f3;
	line-height:40px;
	font-size:14px;
	color:#096;
	margin-top:15px;
}
.panel .p-box .p-regbox .inp-items {
	height:35px;
	margin-top:10px;
	clear:both;
}
.panel .p-box .p-regbox .inp-items input[type="radio"] {
	width:20px;
	height:15px;
	margin-top:10px;
}
.panel .p-box .p-regbox .inp-items input {
	padding:2px 8px;
	border:1px solid #ddd;
	border-radius:3px;
}
.panel .p-box .p-regbox .inp-items .item-name {
	display:block;
	width:100px;
	line-height:30px;
	text-align:right;
	font-size:14px;
}
.panel .p-box .p-regbox .inp-items i {
	font-size:10px;
	padding:0 10px;
}
.panel .p-box .p-regbox .inp-items .inp-msg {
	font-size:10px;
}
.panel .p-box .p-regbox .inp-items #register {
	width:268px;
	background:#ccc;
	height:40px;
	cursor:pointer;
	margin-top:30px;
	margin-left:100px;
	font-size:14px;
}
.panel .p-box .p-regbox .facebox .faceimg,.faceupload {
	margin-left:100px;
	margin-top:10px;
}
.panel .p-box .p-regbox .facebox .faceimg {
	width:128px;
	height:128px;
	border:1px solid #ddd;
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
				<li><a href="javascript:void(0);" class="nav-title active">注册用户</a></li>
			</ul>
		</div>		
	</div>
	<!-- 后台导航 结束 -->
	<!-- 后台首页展示区 -->
	<div class="panel">
		<div class="p-step">
			<ul>
				<li>1.设置登录名</li>
				<li>2.验证帐户</li>
				<li class="curent">3.填写帐户信息</li>
				<li>4.注册成功</li>
			</ul>
		</div>	
		<div class="p-box">
			<!-- 个人信息区域 -->
			<div class="p-regbox">
				<div class="p-reg-title">&nbsp;&nbsp;&nbsp;&nbsp;个人信息</div>
				<div class="inp-items">
					<label>
						<span class="item-name">姓名：</span>
						<span class="inp-msg">
							<input type="text" name="name" autofocus="autofocus" placeholder="真实姓名 / 妮称" style="width:150px">
							<i>必填,实名认证	</i>
						</span>
					</label>
				</div>
				<div class="inp-items">
					<label>
						<span class="item-name">性别：</span>
						<i><input type="radio" name="sex" value="1" checked="checked">先生</i>
					</label>
					<label>	
						<i><input type="radio" name="sex" value="0">女士</i>
					</label>
					<label>							
						<i><input type="radio" name="sex" value="2">保密</i>
					</label>					
				</div>
				<div class="inp-items">
					<label>
						<span class="item-name">收货地址：</span>
						<span class="inp-msg">
							<input type="text" name="address" autofocus="autofocus" style="width:550px">
						</span>
					</label>
				</div>				
			</div>
			<!-- 个人头像区域 -->
			<div class="p-regbox">
				<div class="p-reg-title">&nbsp;&nbsp;&nbsp;&nbsp;上传头像</div>
				<div class="facebox">
					<div class="faceimg">
						<img src="">
					</div>
					<div class="faceupload">
						<input type="file" id="fileupload"/>
					</div>	
				</div>
			
				<div class="inp-items">
					<label><input type="button" id="register" onclick="register()" value="确认提交，完成注册"></label>
				</div>										
			</div>			
		</div>
	</div>
	
	<!-- 脚部信息  开始 -->
    <%@include file="../home/footer.jsp" %>
    <!-- 脚部信息  结束 -->

	<script type="text/javascript">
		function register(){
			window.location.href = "${basePath}complete.jxp";
			
		}
   	</script>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶社 - 注册会员</title>
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
	width:600px;
/* 	height:300px; 
	border:1px solid #ddd;*/
	margin:30px auto;
}
.panel .p-box .p-regbox .inp-items input {
	width:250px;
	padding:2px 8px;
	margin-top:10px;
	border:1px solid #ddd;
	border-radius:3px;
}
.panel .p-box .p-regbox .inp-items label {
	font-family:"微软雅黑";
	font-size:14px;
}
.panel .p-box .p-regbox .inp-items i {
	font-size:10px;
	color:red;
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
	margin-left:98px;
}
.panel .p-box .p-regbox .inp-items #inp-mobilecode {
	width:100px;
	margin-left:2px;
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
				<li class="curent">2.验证帐户</li>
			</ul>
		</div>
		
		<div class="p-box">
			<div class="p-regbox">
				<div class="inp-items">
					<label>恭喜您，帐号注册成功！</label>
				</div>
				<div class="inp-items">
					<label><input type="button" id="register" onclick="register()" value="跳转到首页"></label>
				</div>										
			</div>
		</div>
	</div>
	
	<!-- 脚部信息  开始 -->
    <%@include file="../../../footer.jsp" %>
    <!-- 脚部信息  结束 -->

	<script type="text/javascript">
		function register(){
			window.location.href = "${basePath}home.jsp";
			
		}
   	</script>
</body>
</html>
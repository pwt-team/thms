<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶社 - 注册会员</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name="expires" content="0">
<meta name="X-UA-Compatible" content="IE=Edge,chrome=1" />
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
	margin:30px auto;
}
.panel .p-box .p-regbox .inp-items {
	margin-top:10px;
	height:35px;
}
.panel .p-box .p-regbox .inp-items #inp-mobile {
	width:250px;
}
.panel .p-box .p-regbox .inp-items .inp-opt,.inp-msg {
	font-family:"微软雅黑";
	font-size:14px;
	display:block;
	float:left;
}
.panel .p-box .p-regbox .inp-items i.iconfont {
	font-size:10px;
	color:red;
	padding:0 10px;
}
.panel .p-box .p-regbox .inp-items .inp-msg {
	font-size:10px;
}
.panel .p-box .p-regbox .inp-items #mobile-register {
	width:268px;
	background:#ccc;
	height:40px;
	cursor:pointer;
	margin-left:98px;
}
.panel .p-box .p-regbox .inp-items #inp-mobilecode,#inp-mobile  {
	border:1px solid #ddd;
	border-radius:3px;
	padding:3px 8px;	
}
.panel .p-box .p-regbox .inp-items #inp-mobilecode{
	width:100px;
	margin-left:2px;
}
.panel .p-box .p-regbox .inp-items .active-msg {
	font-size:15px;
	color:#096;
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
				<li class="curent">2.验证帐户</li>
			</ul>
		</div>
		
		<div class="p-box">
			<div class="p-regbox">
				<div class="inp-items">
					<p class="active-msg">恭喜您,注册成功!</p>
					<p class="active-msg" id="home-skip">请进入邮箱点击激活链接,48小时内有效.</p>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 脚部信息  开始 -->
    <%@include file="../home/footer.jsp" %>
    <!-- 脚部信息  结束 -->
    
    <script type="text/javascript">
    var myinterval = null;
    	$(function(){
    		var skipDom = $("#home-skip");
    		var text = skipDom.text();
    		var s = 10;
    		myinterval = setInterval(function(){
    			skipDom.text(text +"   ( " + s + "秒后自动关闭 )");
    			s = s-1;
    			if(s===0){
    				clearInterval(myinterval);
    				window.location.href = "${baesPath}home.jsp";
    			};
    		},1000);
    		
    	});
    </script>
</body>
</html>
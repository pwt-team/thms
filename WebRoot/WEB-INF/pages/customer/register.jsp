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
	clear:both;
}
.panel .p-step {
	width:900px;
	height:45px;
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
.panel .p-box{
	width:600px;
	margin:30px auto;
}
.panel .p-box .p-regbox .inp-items {
	margin-top:10px;
	height:35px;
}
.panel .p-box .p-regbox .inp-items #inp-email,#inp-password,#inp-repassword {
	width:250px;
	height:25px;
	padding:3px 10px;
	border-radius:3px;
}
.panel .p-box .inp-items .inp-opt,.inp-msg {
	font-family:"微软雅黑";
	font-size:14px;
	display:inline-block;
	float:left;
}
.panel .p-box .inp-items .inp-opt {
	width:350px;
	height:35px;
}
.panel .p-box .inp-items i.iconfont {
	font-size:12px;
	color:red;
}
.panel .p-box .inp-items .inp-msg {
	font-size:12px;
	width:150px;
	display:none;
}
.panel .p-box .inp-items #register {
	width:268px;
	background:#ccc;
	height:40px;
	cursor:pointer;
	margin-left:70px;
	color:#fff;
	font-size:14px;
}
.panel .p-box  .inp-items #inp-security {
	width:100px;
	padding:3px 10px;
	margin-left:2px;
	border-radius:3px;
}
.panel .p-box .inp-items #img-securigty {
	width:118px;
	margin-left:10px;
	padding:3px 10px;
	border:1px solid #ddd;
	border-radius:3px;
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
				<li class="curent">1.设置登录名</li>
				<li>2.验证帐户</li>
			</ul>
		</div>
		
		<div class="p-box">
			<!-- 注册box -->
			<div class="p-regbox">
				<div class="inp-items">
				
					<label class="inp-opt">${result}邮箱注册：<input type="text" id="inp-email" autofocus="autofocus" placeholder="请使用有效邮箱注册"></label>
					<label class="inp-msg"><i class="iconfont">&#xe60b;</i>邮箱格式不正确</label>
				</div>
				<div class="inp-items">
					<label class="inp-opt">输入密码：<input type="password" id="inp-password"></label>
					<label class="inp-msg"><i class="iconfont">&#xe60b;</i>密码长度为6-32</label>
				</div>
				<div class="inp-items">
					<label class="inp-opt">重复密码：<input type="password" id="inp-repassword"></label>
					<label class="inp-msg"><i class="iconfont">&#xe60b;</i>两次输入不一致</label>
				</div>	
				<div class="inp-items">
					<label class="inp-opt">&nbsp;&nbsp;&nbsp;验证码：<input type="text" id="inp-security"><img alt="" src="" width="100px" height="26px" id="img-securigty" ></label>
					<label class="inp-msg"><i class="iconfont">&#xe60b;</i>验证码不正确</label>
				</div>					
				<div class="inp-items">
					<input type="hidden" id="inp-action" value="register">
					<label><input type="button" id="register" value="注册,下一步验证激活" onclick="activate()"></label>
				</div>										
			</div>
		</div>
	</div>
	<!-- 脚部信息  开始 -->
    <%@include file="../../../footer.jsp" %>
    <!-- 脚部信息  结束 -->

	<script type="text/javascript">
		function activate(){
			var email = $("#inp-email").val();
			var pwd = $("#inp-password").val();
			var repwd = $("#inp-repassword").val();
			if(!is_email(email)){
				messageBox("错误,请输入一个正确格式的邮箱地址!");
				return false;
			}
			if(isEmpty(pwd)){
				messageBox("错误,密码不能为空!");
				return false;
			}			
			if(isEmpty(repwd)){
				messageBox("错误,重复密码不能为空!");
				return false;
			}		
			if(!eqauls(pwd, repwd)){
				messageBox("错误,两次输入的密码不匹配!");
				return false;
			}
			$.ajax({
				url:"${basePath}email/register",
				type:"post",
				data:{
					"email":email,
					"pwd":pwd,
					"repwd":repwd,
					"action":$("#inp-action").val()},
				success:function(response){
					if(response.success){
						var msg = response.result.msg;
						if(eqauls(msg, "send_success")){
							window.location.href = "${basePath}activate";
						}else if(eqauls(msg, "email_exist")){
							messageBox("错误,您输入的邮箱已注册!");
						} 
					}
				}
			});
		}
   	</script>
</body>
</html>
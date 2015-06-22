<%@page import="com.thms.bean.Invoice"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@page import="com.thms.bean.User"%>
<%
	
	User user = (User)request.getAttribute("user");
	pageContext.setAttribute("user", user);
	List<Invoice> invoices = new ArrayList<Invoice>();
	invoices = (List<Invoice>)request.getAttribute("invoices");
	pageContext.setAttribute("invoices", invoices);
%>
<style type="text/css">
.header {
	width: 100%;
	height: 100px;
	background: #1CBD9D;
}

.header .h-box {
	width: 1000px;
	height: 100px;
	margin: 0 auto;
}

.header .h-box .logo-box {
	width: 168px;
}

.header .h-box .login-box,.logo-box {
	float: left;
	margin-top: 20px;
}

.header .h-box .login-box {
	float: right;
}

.header .h-box .login-box .logined img {
	width: 36px;
	border-radius: 36px;
	border: 2px solid #ddd;
	box-shadow: 1px 1px 10px #ccc;
	margin-right: 5px;
}

.header .h-box .login-box .logined ul li {
	list-style: none;
	float: left;
}

.header .h-box .login-box .logined ul li a,.login ul li a {
	color: #fff;
	font-size: 14px;
	font-family: "微软雅黑";
	display: block;
	text-align: center;
	padding: 5px;
	cursor: pointer;
	line-height: 20px;
}

.m-t10 {
	margin-top: 5px;
}

.header .h-box .login-box .logined,.login {
	float: left;
}

.header .h-box .login-box .login ul li {
	list-style: none;
	float: left;
}
</style>
<!-- 头部信息 -->
<div class="header">
	<div class="h-box">
		<!-- logo图标 -->
		<div class="logo-box">
			<a href="${basePath }home.jsp">
			<img alt="" src="${basePath}images/led.png" width="168px"></a>
		</div>
		<!-- 登录信息 -->
		<div class="login-box">
			<input type="hidden" id="myuid" data-uuid="${user.id }" value="${user.id }">
			<!-- 已经登录信息 -->
			<c:if test="${!empty user.id}">
			<div class="logined">
				<ul>
					<c:choose>
						<c:when test="${user.status == 0}">
							<li><a href="${basePath}user/myspace?uid=${user.id}" class="nick m-t10" title = "${user.name}">${user.email}(未激活)</a></li>
						</c:when>		
						<c:when test="${user.status == 1}">
							<li><a href="${basePath}user/myspace?uid=${user.id}" class="nick m-t10" title = "${user.name}">${user.email}(已激活)</a></li>
						</c:when>						
						<c:when test="${user.status == 2}">
							<li><a href="${basePath}user/myspace?uid=${user.id}" class="nick m-t10" title = "${user.name}">${user.email}(已锁定)</a></li>
						</c:when>										
					</c:choose>
					<li><a class="leven m-t10"></a></li>
					<li><a href="${basePath}order/edit.jxp" class="order m-t10">订单中心</a></li>
					<li><a href="${basePath}admin/admin.jxp" class="order m-t10">管理中心</a></li>
					<c:if test="${!empty user.status}">
						<li><a href="${basePath }logout" class="loginout m-t10">注销</a></li>
					</c:if>
					
					<li></li>
				</ul>
			</div>
			</c:if>
			<!-- 没有登录信息 -->
			<c:if test="${empty user.status}">
				<div class="login">
					<ul>
						<li><a href="javascript:void login();" class="m-t10">登录</a></li>
						<li><a href="${basePath}register.jxp" class="m-t10">免费注册</a></li>
					</ul>
				</div>
			</c:if>
		</div>
	</div>
</div>
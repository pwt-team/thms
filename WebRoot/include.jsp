<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	application.setAttribute("basePath", basePath);
%>
<script type="text/javascript">var basePath = "${basePath}";</script>
<link rel="stylesheet" type="text/css" href="${basePath}css/default.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/animate.css">
<link rel="stylesheet" type="text/css" href="${basePath}js/sg/css/sg.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/iconfont.css">
<link rel="shortcut icon" href="${basePath}images/favicon.png"/>
<script type="text/javascript" src="${basePath}js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="${basePath}js/util.js"></script>
<script type="text/javascript" src="${basePath}js/sg/sg.js"></script>

<script type="text/javascript">
	function login(){
		yzLogin();
	}
</script>
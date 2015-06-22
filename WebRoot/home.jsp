<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>惠宇茶社 - 一个随心的纯静空间,品茗 商务名茶!</title>
    <%@include file="include.jsp" %>
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name="expires" content="0">   
	<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
	<meta name="keywords" content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
	<meta name="description" content="惠宇茶舍网上订座">
	<style type="text/css">
		
	</style>
  </head>
  <body>
  	<!-- 头部信息  开始 -->
  	<%@ include file="header.jsp" %>
  	
    <!-- 头部信息  结束 -->
    <%@include file="banner.jsp" %>
    
    <!-- 内容部分  开始 -->
	<%@include file="content.jsp" %>
    
    <!-- 脚部信息  开始 -->
    <%@include file="footer.jsp" %>
    <!-- 脚部信息  结束 -->
    
    
    <script type="text/javascript">
    	$("#admincenter").on("click",function(){
    		window.location.href = "${basePath}admin/admin.jxp";
    	});
    </script>
  </body>
</html>

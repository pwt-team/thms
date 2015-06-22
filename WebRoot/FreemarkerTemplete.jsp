<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'FreemarkerTemplete.jsp' starting page</title>
  </head>
  
  <body>
   

	<#List myFiles as myFile>
		${myFile.name }
	</#list>

	<!-- *************************************** -->
	<!-- 自定义标签按以下方式引用 -->
	<@myFile type="1" pageNo="0" pageSize ="10" var="mf">
		<!-- 算定义标签的 -->
		${mf.name} ==== ${mf.age }
	</@myFile>

	<!-- *************************************** -->
 	<#if 1==1>
 		<h1>2222</h1>
 	<#else if 2==1>
 		<h1>2222</h1>
 	<#else>
 		<h1>2222</h1>
 	</#if>

	<!-- *************************************** -->

	<#if indexOf("11111",'1') != -1>
	
	</#if>
	
	<!-- *************************************** -->
	<!-- 日期格式化自定义标签的使用。自定义标签见 keke 2015-05-30 freemarker+自定义标签 课程 -->
	${dateFormat(dateString,"yyyy-MM-dd HH:mm:ss")}


  </body>
</html>

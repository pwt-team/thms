<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>惠宇茶舍 - 一个随心的纯静空间</title>
	<%@include file="include.jsp"%>
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
	<meta name="expires" content="0">
	<meta name="keywords" content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
	<meta name="description" content="惠宇茶舍网上订座">
	<style type="text/css">
	body {
		background: #1CBD9D;
		background:url(images/bg1.png) no-repeat center fixed!important;
		background-size:cover;
		-moz-user-select: none; /*火狐*/
		-webkit-user-select: none; /*webkit浏览器*/
		-ms-user-select: none; /*IE10*/
		-khtml-user-select: none; /*早期浏览器*/
		user-select: none;
	}
	
	a {
		text-decoration: none;
	}
	
	a:hover {
		text-decoration: none;
	}
	
	.hy-welcom {
		height: auto;
		overflow: hidden;
	}
	
	.hy-welcom .b-hy {
		font-family: "汉鼎繁淡古";
		font-size: 26px;
		color: #f3f3f3;
	}
	
	.hy-welcom .b-jingya {
		font-family: "禹卫硬笔常规体";
		font-size: 24px;
		color: #f3f3f3;
		text-align: center;
		display: block;
		margin-top: 20px;
	}
	
	#b-hycs {
		display: block;
		text-align: center;
		margin-top: 12%;
	}
	
	#tea {
		font-family: "DFPYuanYuanDouYun-B5";
		font-size: 60px;
		color: #f3f3f3;
	}
	
	#f-title {
		width: 100%;
		height: 20px;
		margin: 0 auto;
		line-height: 80px;
		border-top: 1px solid #ddd;
		margin-top: 160px;
	}
	
	#f-contact {
		width: 550px;
		height: 40px;
		display: none;
		margin: 0 auto;
	}
	
	#f-contact ul li {
		list-style: none;
		color: #f0f0f0;
		text-align: center;
		padding-left: 10px;
		font-size: 18px;
		line-height: 20px;
		font-family: "禹卫硬笔常规体";
		letter-spacing: 2px;
	}
	</style>
</head>

<body>
	<div class="hy-welcom">
		<a href="${basePath}home.jsp" id="b-hycs" data-status="f">
			<img alt="" src="images/led.png" width="250px">
			<img alt="" src="images/yun.png" width="450px">
		</a> 
		<a href="${basePath}home.jsp" id="b-hyt" data-status="f">
			<span class="b-jingya">一个感性而随性的静雅空间</span>
		</a>
		<div class="hy-footer">
			<div id="f-title"></div>
			<div id="f-contact">
				<ul>
					<li><!-- 地址:广东省惠州市惠阳区三和国际花园城2号楼1003室 --></li>
				</ul>

			</div>
		</div>
	</div>

	<script type="text/javascript">
		
		var width = $(document).width();
		$(function() {
			$("body").eq(0).css("overflow", "hidden");
			$("body").css({"width":width});
			line();
		});

		/* 线的特效 */
		function line() {
			var myinterval;
			var i = 0;
			myinterval = setInterval(function() {
				i = i + 15;
				if (i <= width) {
					$("#f-title").css({
						"width" : i + "px"
					});
				} else {
					clearInterval(myinterval);
					$("#f-contact").fadeIn("normal", function() {
						$("#b-hycs,#b-hyt").data("status", "t");
					});
				}
			}, 1);
			$("#f-title").fadeOut(1000);
		}
	</script>

</body>
</html>

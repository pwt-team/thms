<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
.footer {
	width: 100%;
	height: 330px;
	background: #fff;
}

.footer .f-top {
	width: 100%;
	height: 1px;
	background: #ddd;
}

.footer .f-box {
	width: 1000px;
	height: 250px;
	margin: 0 auto;
}

.footer .f-pic {
	width: 1000px;
	height: 156px;
	margin: 0 auto;
	margin-top: 40px;
}

.footer .f-pic .f-pic-list {
	width: 156px;
	height: 150px;
	float: left;
}

.footer .f-pic .f-pic-list .f-pic-title {
	width: 156px;
	height: 36px;
	display: block;
	line-height: 36px;
	color: #7d7d7d;
	font-size: 16px;
}

.footer .f-pic .f-pic-list .f-pic-title i,span {
	float:left;
	color:#7d7d7d;
}

.footer .f-pic .f-pic-list .f-pic-title i {
	font-size:24px;
	margin-right:10px;
}
.footer .f-pic .f-pic-list ul {
	padding-top: 8px;
	padding-left: 41px;
}

.footer .f-pic .f-pic-list ul>li {
	height: 20px;
	line-height: 20px;
	vertical-align: top;
	text-align: -webkit-match-parent;
	color: #7d7d7d;
	font-size: 13px;
}

.footer .f-pic .f-pic-list ul>li>a {
	letter-spacing: 1px;
	color: #7d7d7d;
	text-align:left;
}

.footer .f-pic .f-pic-list ul>li>a:hover {
	text-decoration: underline;
	color: #399;
}

.footer .f-nav {
	width: 1000px;
	height: 50px;
	margin: 0 auto;
	border-top: 1px solid #ddd;
}

.footer .f-nav ul>li {
	list-style: none;
	float: left;
	width: 90px;
	padding: 0 10px;
}

.footer .f-nav ul>li>a {
	color: #7d7d7d;
	float: left;
	text-align: center;
}

.footer .f-nav ul>li>a:hover {
	text-decoration: underline;
	color: #399;
}

.footer .f-nav ul>li>span {
	width: 28px;
	font-size: 8px;
	line-height: 18px; display : block;
	float: left;
	display: block; float : left;
	color: #7d7d7d;
	text-align: right;
}

.footer .f-nav .f-nav-box {
	width: 440px;
	margin: 0 auto;
	padding-top: 20px;
}

.footer .f-copyright {
	width: 700px;
	margin: 0 auto;
}

.footer .f-copyright div {
	width: auto;
	height: 26px;
	line-height: 26px;
	text-align: center;
	font-size: 12px;
	color: #7d7d7d;
}

.right-tool {
	width: 50px;
	height: 180px;
	position: fixed;
	bottom: 30px;
	right: 20px;
}

.right-tool a {
	display: block;
	width: 50px;
	height: 50px;
	border-radius: 5px;
}

.right-tool .r-bar {
	background: #646464;
	margin-bottom: 8px;
}

#recode:hover {
	background: "#FF3228";
}

#recode i {
	display: block;
	width: 50px;
	height: 50px;
	background: url(${basePath }images/erweima_3.png) no-repeat center;
	background-position: -124px 0px;
	margin-left: 2.5px;
}

#feedback span {
	width: 35px;
	display: block;
	height: 35px;
	line-height: 17px;
	padding: 7px 7px;
	color: #fff;
	letter-spacing: 2px;
}

#feedback span:hover {
	color: #1CBD9D;
}

#back {
	position: relative;
}

#back i {
	width: 45px;
	height: 15px;
	display: block;
	background: url(${basePath }images/erweima_3.png) no-repeat center;
	background-position: -125px -106px;
	position: absolute;
	top: 15px;
}

#big-recode {
	width: 122px;
	height: 137px;
	background: url(${basePath }images/erweima_3.png) no-repeat center;
	background-position: 0px 2px;
	position: absolute;
	top: 0;
	right: 57px;
	display: block;
	display: none;
}
</style>
<!-- 脚部信息 -->
<div class="footer">
	<div class="f-top"></div>
	<!-- 导航信息 开始  -->
	<div class="f-pic">
		<div class="f-pic-list">
			<div class="f-pic-title"><i class="iconfont">&#xe618;</i><span>茶舍指南</span></div>
			<ul>
				<li><a href="javascript:void(0);">订座流程</a></li>
				<li><a href="javascript:void(0);">发票申领</a></li>
				<li><a href="javascript:void(0);">帐户管理</a></li>
				<li><a href="javascript:void(0);">会员优惠</a></li>
			</ul>
		</div>
		<div class="f-pic-list">
			<div class="f-pic-title"><i class="iconfont">&#xe64d;</i><span>支付方式</span></div>
			<ul>
				<li><a href="javascript:void(0);">货到付款</a></li>
				<li><a href="javascript:void(0);">网上支付</a></li>
				<li><a href="javascript:void(0);">礼品卡支付</a></li>
				<li><a href="javascript:void(0);">银行转帐</a></li>
			</ul>
		</div>
		<div class="f-pic-list">
			<div class="f-pic-title"><i class="iconfont">&#xe64f;</i><span>订单服务</span></div>
			<ul>
				<li><a href="javascript:void(0);">下达订单</a></li>
				<li><a href="javascript:void(0);">修改订单</a></li>
				<li><a href="javascript:void(0);">取消订单</a></li>
			</ul>
		</div>
		<div class="f-pic-list">
			<div class="f-pic-title"><i class="iconfont">&#xe697;</i><span>配送方式</span></div>
			<ul>
				<li><a href="javascript:void(0);">配送及免邮标准</a></li>
				<li><a href="javascript:void(0);">订单自提</a></li>
				<li><a href="javascript:void(0);">验货与签收</a></li>
			</ul>
		</div>
		<div class="f-pic-list">
			<div class="f-pic-title"><i class="iconfont">&#xe64c;</i><span>售后保障</span></div>
			<ul>
				<li><a href="javascript:void(0);">退/换标准</a></li>
				<li><a href="javascript:void(0);">退/换办理流程</a></li>
				<li><a href="javascript:void(0);">退/换状态查询</a></li>
				<li><a href="javascript:void(0);">退款方式和时间</a></li>
			</ul>
		</div>
		<div class="f-pic-list">
			<div class="f-pic-title"><i class="iconfont">&#xe648;</i><span>茶舍服务</span></div>
			<ul>
				<li><a href="javascript:void(0);">品茶休闲</a></li>
				<li><a href="javascript:void(0);">商务空间</a></li>
				<li><a href="javascript:void(0);">名茶商务定制</a></li>
				<li><a href="javascript:void(0);">茶具字画</a></li>
			</ul>
		</div>
	</div>
	<!-- 导航信息 开始 -->
	<!-- 关于 开始 -->
	<div class="f-nav">
		<div class="f-nav-box">
			<ul>
				<li><a href="javascript:void(0);">关于我们</a><span>|</span></li>
				<li><a href="javascript:void(0);">联系我们</a><span>|</span></li>
				<li><a href="javascript:void(0);">支付方式</a><span>|</span></li>
				<li><a href="javascript:void(0);">友情链接</a></li>
			</ul>
		</div>
	</div>
	<!-- 关于 结束  -->
	<!-- 版权信息 开始 -->
	<div class="f-copyright">
		<div>Copyright &copy; 惠宇茶舍 2015, All Rights Reserved</div>
		<div>粤ICP:**********号 经营许可证:****************</div>
	</div>


</div>
<!-- 右侧停靠工具 -->
<div class="right-tool">
	<a href="javascript:void(0);" class="r-bar" id="recode" title="关注茶舍"><i id="rqcode"></i></a> 
	<a href="javascript:void(0);" class="r-bar" id="feedback" title="意见与建议反馈"><span>意见反馈</span></a> 
	<a href="javascript:void(0);" class="r-bar" id="back"><i data-keys="up"></i></a> 
	<a href="javascript:void(0);" id="big-recode"></a>
</div>

<script type="text/javascript">
	var scrollHeight = getScrollHeight();
	
	/* 处理滚动条
	$(window).scroll(function() {
		var box = $("#back");
		if ($(window).scrollTop() >= 100) {
			$(".right-tool").stop().show();
			box.children("i").css({ "background-position" : "-125px -122px" });
			box.children("i").data("keys", "down");
			box.attr("title", "回到顶端");
		} else {
			$(".right-tool").stop().hide();
			box.children("i").css({ "background-position" : "-125px -106px"});
			box.children("i").data("keys", "up");
			box.attr("title", "回到底端");
		}
		console.log($(window).scrollTop());
	});
	$("#back").click(function() {
		var key = $(this).children("i").data("keys");
		if (key == "down") {
			$(this).children("i").data("keys", "up");
			$("body,html").animate({"scrollTop":0},1000);
		} else {
			console.log(scrollHeight) //ok;
			$("body,html").animate({"scrollTop": scrollHeight}, 1000);
			$(this).children("i").data("keys", "down");
		}
		return false;
	});
	 */

	/* 处理二维码 
	$("#rqcode").click(function() {
		$("#big-recode").stop(true, true).fadeIn('slow');
		return false;
	});
	$("body").bind("click", function() {
		$("#big-recode").stop(true, true).fadeOut(500, 0);
		return false;
	});*/

	/* 单击显示放大二维码 
	$("#qrcode").click(function() {
		$("#h-qrcode").fadeTo(500, 1);
		$("#h-qrcode").data("status", 1);
		return false;
	});
	$("body").bind("click", function(e) {
		var s = $("#h-qrcode").data("status");
		if (s == 1) {
			$("#h-qrcode").fadeOut(500, 0);
			$("#h-qrcode").data("status", 0);
			e.stopPropagation();
		}
	});*/
</script>
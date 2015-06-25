<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style type="text/css">
.banner {
	width: 100%;
	height: 355px;
	position: relative;
}

.banner .b-topline {
	width: 100%;
	height: 5px;
	background: #fff;
}
.banner .b-list {
	width:100%;
	height:350px;
	margin:0 auto;
	position: relative;
}

.banner .b-list .b-list-item {
	width: 100%;
	height: 350px;
	position: absolute;
	top: 0;
	left: 0;
}
.banner .b-list .b-list-item img {
	width: 100%;
	display:block;
}


.banner .item-pointer {
	width: 200px;
	height: 30px;
	position: absolute;
	top: 320px;
	left: 43%;
}

.banner .item-pointer i {
	float: left;
	display: block;
	width: 12px;
	height: 12px;
	border-radius: 12px;
	margin: 5px;
	background: #1CBD9D;
	border:1px solid #1CBD9D;
	opacity:.7;
	cursor:pointer;
}

.banner .item-pointer .sel {
	background:#f0f0f0;
}

</style>
<!-- 头部信息 -->
<div class="banner">
	<div class="b-topline"></div>
	<div class="b-list">
		<div class="b-list-item b-1"><img alt="惠宇茶舍" height="350px" src="../images/tea1.jpg"></div>
		<div class="b-list-item b-2"><img alt="惠宇茶舍" height="350px"  src="../images/tea2.jpg"></div>
		<div class="b-list-item b-3"><img alt="惠宇茶舍" height="350px"  src="../images/tea3.jpg"></div>
		<div class="b-list-item b-4"><img alt="惠宇茶舍" height="350px"  src="../images/tea4.jpg"></div>
		<div class="b-list-item b-5"><img alt="惠宇茶舍" height="350px"  src="../images/tea5.jpg"></div>
		<div class="b-list-item b-6"><img alt="惠宇茶舍" height="350px"  src="../images/tea6.jpg"></div>
		<div class="b-list-item b-7"><img alt="惠宇茶舍" height="350px"  src="../images/tea7.jpg"></div>
	</div>
	<div class="item-pointer">
		<i class="sel"></i>
		<i></i>
		<i></i>
		<i></i>
		<i></i>
		<i></i>
		<i></i>
	</div>
	<div class="b-topline"></div>
</div>
<script type="text/javascript">

	var myInterval;
	/* banner滑动效果 */
	$(function() {
		init_banner(1);
	});
	
	
	function init_banner(i){
		var count = $(".b-list-item").length;
		myInterval = setInterval(function() {
			if (i < count) {
				var ii = $(".item-pointer").find("i").eq(i);
				ii.addClass("sel").siblings().removeClass("sel");
				$(".b-list-item").eq(i).show().fadeTo('2000', 1).siblings().fadeOut('2000', 0);
				i++;
				if (i == count) {
					i = 0;
				}
			}
		}, 3000);	
	}
	
	/* 处理鼠标滑动效果  */	
	$(".item-pointer").find("i").mouseover(function(){
		var idom = $(this);
		var index = idom.index();
		clearInterval(myInterval);
		idom.addClass("sel").siblings().removeClass("sel");
		$(".b-list-item").eq(index).show().fadeTo('2000', 1).siblings().fadeOut('2000', 0);
	}).mouseout(function(){
		var index = $(this).index();
		init_banner(index);
	});
	
	
	
	
</script>
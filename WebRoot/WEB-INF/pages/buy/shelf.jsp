<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>惠宇茶舍 - 商品选购</title>
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
	<meta name="expires" content="0">    
	<meta name="keywords" content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
	<meta name="description" content="惠宇茶舍网上订座">
	<%@include file="../../../include.jsp" %>
	<link rel="stylesheet" type="text/css" href="${basePath}js/datetime/jquery.datetimepicker.css">
	<script src="${basePath}js/datetime/jquery.datetimepicker.js"></script>	
	<style type="text/css">
		body {
			background:#ddd; 
			font-family:"微软雅黑";
		}
		.goods-nav {
			width:100%;
			height:60px;
			background:#646464;
		}
		
		.g-nav-box {
			width:1000px;
			height:60px;
			margin:0 auto;
		}
		
		.g-nav-box ul li {
			list-style:none;
			float:left;
			padding:0 30px;	
		}
		
		.g-nav-box .g-nav-title{
			color:#fff;
			font-size:18px;
			line-height:60px;
			display:block;
		}
		
		.goods-info,.goods-items,.goods-time {
			width:1000px;
			background:#f3f3f3;
			border:1px solid #ccc;
			margin:30px auto; 
			
		}
		
		.g-info-title {
			line-height:70px;
			padding-left:50px;
			border-bottom:1px solid #ddd;
		}
		
		.g-info-title a{
			font-size:20px;
			color:#1CBD9D;
			display:block;
		}
		
		.goods-info .g-info-house {
			width:1000px;
			height:220px;
			margin:0 auto;
			background:#fafafa;
		}
		.goods-info .g-info-house ul li {
			list-style:none;
			float:left;
		}		
		.goods-info .g-info-house .g-h-box {
			width:170px;
			height:180px;
			padding:15px 5px;
			margin-left:45px;
		}		
		.goods-info .g-info-house .g-h-box .g-h-img {
			width:168px;
			height:175px;
			border:1px solid #ddd;
		}
		
		.goods-info .g-info-house .g-h-text {
			padding:5px 15px;
			width:700px;
		}		
		
		.goods-info .g-info-house .g-h-text div{
			display:block;
			line-height:22px;
		}		
		
		.goods-info .g-info-house .g-h-text .g-h-title{
			line-height:35px;
			font-size:18px;
		}
		
		.goods-info .g-info-house .g-h-text .g-h-price{
			line-height:25px;
			font-size:14px;
			
		}		
		
		.goods-info .g-info-house .g-h-text .g-h-description {
			padding-bottom:15px;
		}
		
		.goods-info .g-info-house .g-h-text .g-h-more {
			line-height:40px;
			border-top:1px solid #1CBD9D;
		}
		
		.goods-info .g-info-house .g-h-text .g-h-more ul li {
			list-style:none;
			float:left;
			padding:0 5px;
		}
		.goods-info .g-info-house .g-h-text .g-h-more ul li a{
			font-size:12px;
			padding:5px 10px;
			border:1px solid #ddd;
			color:#1CBD9D;
		}	
/* 套餐  */	
		.goods-items .taocan-box {
			width:100%;
			background:#fafafa;
		}
		.goods-items .taocan-box .tc-items  {
			width:900px;
			margin:0 auto;
			padding-top:30px;
			padding-bottom:10px;
		}		
		.goods-items .taocan-box .tc-items ul {
		}	
		.goods-items .taocan-box .tc-items input {
			margin-right:5px;
		}
		.goods-items .taocan-box .tc-items label {
			font-size:15px;
			height:45px;
			display:block;
		}		
		.goods-items .taocan-box .tc-items ul li {
			float:left;
			height:45px;
			line-height:45px;
			width:19% ;
			border:1px solid #fafafa;
			text-align:center;
			margin-bottom:10px;
			margin-right:5px;
			color:#666;
			border-radius:25px;
		}	
		.goods-items .taocan-box .tc-items ul .taosel{
			border:1px solid #ddd;
			background:#f3f3f3;
			color:#666;
		}	
		.goods-items .taocan-box #taocan-showbox {
			width:900px;
			margin:0 auto;
			padding-bottom:15px;
			display:none;
		}
		.goods-items .taocan-box #taocan-showbox table {
			text-align:center;
			border:1px solid #ddd;
		}
		.goods-items .taocan-box #taocan-showbox table thead tr {
			width:900px;
			height:45px;
			background:#f3f3f3;
			
		}		
		.goods-items .taocan-box #taocan-showbox table thead th {
			text-align:center;
			border:1px solid #ddd;
		}			
		.goods-items .taocan-box #taocan-showbox #taocan-title {
			width:900px;
			height:40px;
			margin-top:50px;
			color:#1CBD9D;
			line-height:40px;
			font-size:16px;
		}
		
/* 小吃 */		
		.goods-items .g-i-table {
			width:1000px;
			height:auto;
			background:#fafafa;
			padding-bottom:30px;
		}
		
		.goods-items .g-i-table .g-table{
			width:900px;
			margin:0 auto;
			background:#fafafa;
			border:1px solid #ccc;
		}
		.goods-items .g-i-table .g-table input[type="checkbox"]{
			cursor:pointer;
			width:14px;
			height:14px;
		}		
		
		.goods-items .g-i-table .g-table input[type="number"]{
	 		width:70px;
	 		margin-top:3px;
	 		font-size:12px;
	 		border-radius:3px;	
	 		text-align:center;
	 		line-height:20px;
	 		color:red;
		}
		
		.goods-items .g-i-table .g-table thead th,td {
	 		text-align:center;
	 		border:1px solid #ccc;
	 		height:35px;
		}		
		.goods-items .g-i-table .g-table tbody tr td {
			height:35px;
		}

		.goods-items .g-i-table .g-table tbody tr:hover {
			background:#ddd;
			cursor:pointer;
		}
				
		#number {
			height:20px;
		}
		.goods-time .g-t-area {
			background:#fafafa;
		}
		
		.goods-time .g-t-area .g-t-sel {
			width:850px;
			margin-left:50px;
			padding-top:10px;
			height:110px;
		}
		.goods-time .g-t-area .g-t-sel input {
			height:20px;
			width:130px;
			padding:5px 10px;
		}
		.goods-time .g-t-area .g-t-money {
			height:70px;
			line-height:50px;
			padding-left:50px;
		}
		
		#orderMoney,#orderTitle {
			font-size:22px;
		}
		
		.goods-time .g-t-area .g-submit {
			width:300px;
			height:80px;
			padding-left:125px;
		}
		.goods-time .g-t-area .g-submit .btn{
			width:160px;
			height:40px;
			display:block;
			background:#1CBD9D;
			color:#fff;
			line-height:40px;
			text-align:center;
			font-size:16px;
		}		

	</style>
  </head>
  
  <body>  
	<%@include file="../home/header.jsp"%>
    <!-- 导航 -->
    <div class="goods-nav">
    	<div class="g-nav-box">
    		<ul>
    			<li class="bg-orange"><a href="javascript:void(0);" class="g-nav-title">首页</a></li>
    			<li><a href="javascript:void(0);" class="g-nav-title">1.选择预约茶房</a></li>
    			<li><a href="javascript:void(0);" class="g-nav-title">2.选择预约商品</a></li>
    			<li><a href="javascript:void(0);" class="g-nav-title">3.选择预约时间和人数</a></li>
    			<li><a href="javascript:void(0);" class="g-nav-title">4.提交预约订单</a></li>
    		</ul>
    	</div>
    </div>
    
    <!-- 预约产品信息 -->
    <div class="goods-info">
    	<div class="g-info-title">
    		<a href="javascript:void(0);" class="">1.选择您喜欢的茶房</a>
    	</div>
    	<div class="g-info-house">
    		<ul>
    			<li>
    				<div class="g-h-box">
    					<img class="g-h-img" src="${basePath}images/teahouse.jpg" width="168px" height="175px">
    				</div>
    			</li>
    			<li>
    				<div class="g-h-text">
    					<div class="g-h-title">商务舒适8人间</div>
    					<div class="g-h-price">特价：<i>4.9折 </i><i class="text-orange" id="houseMoney">669</i>  ¥</div>
    					<div class="g-h-stall">设施：茶房   停车位 </div>
    					<div class="g-h-description">介绍：该酒店近邻北外滩航运中心、国际游船码头和五角场城市副中心。出行便捷，是商务人士和旅游客人理想的下榻住所。     </div>
    					<div class="g-h-more">
				      		<ul>
				      			<li data-price="131313"><a href="javascript:void(0);">12座电视茶房</a></li>
				      			<li data-price="1413"><a href="javascript:void(0);">5座电视沙发茶房</a></li>
				      			<li data-price="1813"><a href="javascript:void(0);">9座电视阳台茶房</a></li>
				      		</ul>  
    					</div>
    				</div>
    			</li>
    		</ul>
    	</div>
    </div>
 
    <!-- 选择商品 -->
   	<div class="goods-items">
   		<div class="g-info-title">
   			<a href="javascript:void(0);" class="">2.选择您喜欢点心与特色美食</a>
   		</div>
   		
   		<!-- 套餐选购 -->
   		<div class="taocan-box">
   			<div class="tc-items">
 				<ul>
 					<li><label><input type="radio" name="combo">推荐套餐一  ￥120</label></li>
 					<li><label><input type="radio" name="combo">推荐套餐二 ￥20</label></li>
 					<li><label><input type="radio" name="combo">推荐套餐三 ￥220</label></li>
 					<li><label><input type="radio" name="combo">推荐套餐四 ￥180</label></li>
 					<li class="taosel"><label><input type="radio" name="combo" checked="checked">自由搭配</label></li>
 				</ul>
   			</div>
   			<!-- 套餐弹出明细 start -->
   			<div id="taocan-showbox">
   				<div id="taocan-title">推荐套餐一</div>
   				<table>
   					<thead>
   						<tr>
   							<th style="width:40px">序号</th>
   							<th style="width:70px">类型</th>
   							<th style="width:350px">品名</th>
   							<th style="width:60px">单价</th>
   							<th style="width:50px">单位</th>
   							<th style="width:50px">数量</th>
   							<th style="width:80px">金额(元)</th>
   							<th style="width:200px">备注</th>
   						</tr>
   					</thead>
   					<tbody>
   						<tr>
   							<td>1</td>
   							<td>蒸菜</td>
   							<td>北方特色一绝</td>
   							<td>15.00</td>
   							<td>份</td>
   							<td>3</td>
   							<td>45</td>
   							<td>推荐3人享用</td>
   						</tr>
     						<tr>
   							<td>1</td>
   							<td>蒸菜</td>
   							<td>北方特色一绝</td>
   							<td>15.00</td>
   							<td>份</td>
   							<td>3</td>
   							<td>45</td>
   							<td>推荐3人享用</td>
   						</tr>
     						<tr>
   							<td>1</td>
   							<td>蒸菜</td>
   							<td>北方特色一绝</td>
   							<td>15.00</td>
   							<td>份</td>
   							<td>3</td>
   							<td>45</td>
   							<td>推荐3人享用</td>
   						</tr> 						 						
   					</tbody>
   				</table>
   			</div>
   			<!-- 套餐弹出明细 end -->
   		</div>
   		
   		<!-- 点选小吃 start -->
   		<div class="g-i-table">
			<table class="g-table">
				<thead>
					<tr>
						<th style="width:30px">序号</th>
						<th style="width:30px"><input type="checkbox" id="m-checkbox">&nbsp;&nbsp;选择</th>
						<th style="width:120px">名称</th>
						<th style="width:60px">单价(元)</th>
						<th style="width:30px">单位</th>
						<th style="width:60px">数量</th>
						<th style="width:60px">总价</th>
						
					</tr>
				</thead>
				<tbody>
					<tr data-status="sel">
						<td>1</td>
						<td><input type="checkbox" name="checkbox"></td>
						<td>萝卜干</td>
						<td class="price">15.00</td>
						<td>包</td>
						<td><input type="number" name="number" value="0"></td>
						<td class="money">0.00</td>
					</tr>
					<tr data-status="sel">
						<td>2</td>
						<td><input type="checkbox" name="checkbox"></td>
						<td>萝卜干</td>
						<td class="price">15.00</td>
						<td>份</td>
						<td><input type="number" name="number" value="0"></td>
						<td class="money">0.00</td>
					</tr>
					<tr data-status="sel">
						<td>3</td>
						<td><input type="checkbox" name="checkbox"></td>
						<td>盐花生</td>
						<td class="price">5.00</td>
						<td>份</td>
						<td><input type="number" name="number" value="0"></td>
						<td class="money">0.00</td>
					</tr>
					<tr data-status="sel">
						<td>4</td>
						<td><input type="checkbox" name="checkbox"></td>
						<td>小辣鱼</td>
						<td class="price">15.00</td>
						<td>袋</td>
						<td><input type="number" name="number" value="0"></td>
						<td class="money">0.00</td>
					</tr>
					<tr data-status="sel">
						<td>5</td>
						<td><input type="checkbox" name="checkbox"></td>
						<td>萝卜干</td>
						<td class="price">20.00</td>
						<td>元</td>
						<td><input type="number" name="number" value="0"></td>
						<td class="money">0.00</td>
					</tr>	
					<!-- 汇总行 -->
					<tr class="text-orange">
						<td colspan="5">汇总</td>
						<td id="tatolQty">0</td>
						<td id="tatolMoney">0.00</td>
					</tr>																								
				</tbody>
			</table>
   		</div>
   		<!-- 点选小吃 end -->
   	</div>
  
     
     <!-- 预约时间和人数 -->
   	<div class="goods-time">
   		<div class="g-info-title">
    		<a href="javascript:void(0);" class="">3.选择您预约时间和人数</a>
    	</div>
   		<div class="g-t-area">
	   		<div class="g-t-sel">
	   			<div class="mt10">
	   				<label>开始时间： <input type="text" id="stime" name="stime" data-price="20"></label><i class="text-red">&nbsp;*</i>
	   				<label> &nbsp;&nbsp;&nbsp;&nbsp; 结束时间：<input type="text" id="etime" name="etime"></label>
	   				<i class="text-red">&nbsp;*&nbsp;&nbsp;</i><i> 单价  20元/时 ,  共计  </i>
	   				<i id="timeLong"></i><i>  小时   ,  共消费: </i>
	   				<i id="timeMoney" class="text-orange"></i><i> 元</i>
	   			</div>
	   			<div class="mt10">
	   				<label>预约人数： <input type="number" id="pnumber" data-price="10"></label>
	   				<span id="pMoney" class="text-orange"></span>
	   			</div>
	   		</div>
	   		<div class="g-t-money">
	   			<span class="text-orange" id="orderTitle">选购总金额&nbsp;:&nbsp; </span><span class="text-orange" id="orderMoney"></span>
	   		</div>
	   		<div class="g-submit">
	   			<a href="javascript:void(0);" class="btn" onclick="orderSubmit()">选好了 , 提交订单</a>
	   		</div>
    	</div>
   	</div>   
   
  <%@include file="../home/footer.jsp" %>
   	
   	<script type="text/javascript">
   		$(function(){
   			countMoney();
   			/* 处理日期选择及价格计算 */
			$("#stime,#etime").datetimepicker({
				format : "Y-m-d H:i",
				step:30,
				timepicker : true,
				onClose:function(data){
					var st = document.getElementById("stime").value;
		   			var et = document.getElementById("etime").value;
		   			if(isNotEmpty(st) && isNotEmpty(et)){
			   			var n = $.tmDate._numMinute(st,et);
			   			if(n && n > 0){
				   			var tp = $("#stime").data("price");
				   			var tm = ( n * 1 / 60 ) * tp; 
				   			$("#timeLong").text(fmoney( n * 1 /60,1));
				   			$("#timeMoney").text(fmoney(tm,2));
				   			countMoney();
			   			}else{
			   				$("#timeLong").text("");
			   				$("#timeMoney").text(" ,  (时间范围选择不正确！)");
			   			}
		   			}else{
		   				$("#timeLong").text("");
		   				$("#timeMoney").text("");
		   			}
				}
			});
   		});
		
   		/* 切换房间 */
   		$(".g-h-more").find("li").on("click",function(){
   			var price = $(this).data("price");
   			$(".g-h-title").text($(this).text());
   			$("#houseMoney").text(price);
   			countMoney();
   		});
   		
   		
  		/* 统计订单总金额 */
  		function orderMoney(){
   			var foodm = $("#tatolMoney").text();
   			var timem = $("#timeMoney").text();
   			var housem = $("#houseMoney").text();
   			var value = foodm.replace(",","") * 1 + timem.replace(",","") * 1 + housem.replace(",","") * 1;
   			$("#orderMoney").text(fmoney(value,2));
   			return false;
   		} 
   		
   		
   		
   		
   		/* 提交订单 */
   		function orderSubmit(){
   			window.location.href = "${basePath}buy/confirm";
   		}
   		
   		
   		/* 修改数量 */
   		$("input[type='number']").on("change",function(){
   			var num = $(this).val();
   			if(num < 0){
   			 	$(this).val(0); 
   			}
			countMoney();
   		});
   		
   		/* 勾选或取消选择框时事件 */
   		$(".g-i-table tbody input[type='checkbox']").change(function(e){
   			var tr = $(this).parents("tr");
   			var v = $(this).is(":checked");
   			if(v === false){
   				tr.css({"background":"#fafafa"});
   			}else{
   				tr.css({"background":"#ffc"});
   			}
   			countMoney();
   			e.stopPropagation();
   		});
   			
   		
   		/* 统计金额 */
   		function countMoney(){
   			var cks = document.getElementsByName("checkbox");
   			var len = cks.length;
   			var tatolQty=0;
   			var tatolMoney=0;
   			if(len && len > 0){
   				var mbs = document.getElementsByName("number");
   				var prcs = document.getElementsByClassName("price");
   				var mns = document.getElementsByClassName("money");
   				for(var i = 0 ; i < len ; i ++){
   					var bol = cks[i].checked;
   					if(bol){
   						tatolMoney += (prcs[i].innerText * 1 ) * ( mbs[i].value *1 );
   						mns[i].innerText = fmoney((prcs[i].innerText * 1 ) * ( mbs[i].value *1 ),2);
   						tatolQty += mbs[i].value *1;
   					}
   				}
   			}
   			$("#tatolQty").text(tatolQty);
   			$("#tatolMoney").text(fmoney(tatolMoney,2));	
   			orderMoney();
   		};
   		
   		
   		/* 全选/反选  */
   		$("#m-checkbox").bind("click",function(){
   			var cks = document.getElementsByName("checkbox");
   			var len = cks.length;
   			var bol = $(this).is(":checked");
   			if(len && len > 0){
   				for(var i = 0 ; i < len ; i ++){
   					var ck = cks[i];
   					var tr = $(".g-i-table tbody").children("tr").eq(i);
   					if(bol){
   						ck.checked = true;
   						tr.css({"background":"#ffc"});
   					}else{
   						ck.checked = false;
   						tr.css({"background":"#fafafa"});
   					}
   				}
   			}
   			countMoney();
   		});
	
   		/* 套餐明细显示 */
   		$(".tc-items").find("li").on("change",function(){
   			var index = $(this).index();
   			var title = $(this).children("label").text();
   			var count = $(".tc-items").find("li").length;
   			$(this).addClass("taosel").siblings().removeClass("taosel");
   			if(index <= count-2 ){
   				$("#taocan-title").text(title);
   				$("#taocan-showbox").stop().show().slideDown(3000);
   			}else{
   				$("#taocan-showbox").stop().hide().slideUp(3000);
   			}
   		});
   		
   		
   		
   	</script>	
  </body>
</html>
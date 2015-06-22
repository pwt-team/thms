<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>惠宇茶舍 - 订单信息</title>
<meta name="pragma" content="no-cache">
<meta name="cache-control" content="no-cache">
<meta name=X-UA-Compatible content="IE=edge,chrome=1"> 
<meta name="expires" content="0">
<meta name="keywords"
	content="惠宇茶舍,茶舍,惠宇,惠州,惠阳,品茗,喝茶,纯静,纯静空间,休闲,休闲舒适,棋牌,商务">
<meta name="description" content="惠宇茶舍网上订座">
<%@include file="../../../include.jsp"%>
<style type="text/css">
body {
	background: #ddd;
	font-family: "微软雅黑";
}

.order-nav {
	width: 100%;
	height: 60px;
	background: #646464;
}

.o-nav-box {
	width: 1000px;
	height: 60px;
	margin: 0 auto;
}

.o-nav-box ul li {
	list-style: none;
	float: left;
	padding: 0 30px;
}

.o-nav-box .o-nav-title {
	color: #fff;
	font-size: 18px;
	line-height: 60px;
	display: block;
}

.order-info,.g-pay,.g-bill,.g-submit {
	width: 1000px;
	background: #f3f3f3;
	border: 1px solid #ccc;
	margin: 30px auto;
}

.o-info-title {
	line-height: 70px;
	padding-left: 50px;
	border-bottom: 1px solid #ddd;
}

.o-info-title a {
	font-size: 20px;
	color: #1CBD9D;
	display: block;
}

.order-info .o-info-list{
	width: 1000px;
	margin: 0 auto;
	background: #fafafa;
	padding-bottom: 40px;
}

.order-info .o-info-list .o-i-items {
	width: 900px;
	height: auto;
	margin: 0 auto;
}

.order-info .o-info-list .o-i-items .item-title {
	width: 100%;
	height: 45px;
	line-height: 45px;
}

.order-info .o-info-list .o-i-items .items {
	width: 100%;
}

.order-info .o-info-list .o-i-items .items tbody .edit,.delete {
	width:50px;
	display:block;
	cursor:pointer;
}


.order-info .o-info-list .o-i-items .items th,td {
	border: 1px solid #ddd;
	height: 30px;
	text-align: center;
}

.order-info .o-info-list .o-i-items .items input[type='number'] {
	border: none;
	background: none;
	text-align: center;
}

.g-pay .pay {
	width:1000px;
	background: #fafafa;
	padding-bottom: 40px;
	height:170px;
}

.g-pay .pay .pay-box {
	padding-top:30px;
	padding-left: 90px;
}

.g-pay .pay .pay-box .pay-left,.pay-right {
	width: 400px;
	float: left;
}

.g-pay .pay-right i {
	display: block;
	font-size: 13px;
	color: #666;
}

.g-pay label {
	display: block;
	height: 60px;
	font-size: 16px;
}

input[type='radio'] {
	width: 30px;
}

.g-bill .g-b-box {
	width:1000px;
	background: #fafafa;
	padding-bottom: 40px;
}

.g-bill .g-b-box .g-b-item {
	padding-top:30px;
	width:800px;
	height:35px;
	margin:0 auto;
}

.g-bill .g-b-box .g-b-item label {
	width:300px;	
}

.g-bill .g-b-box .g-b-item select {
	width:100px;
	height:28px;	
	padding:2px 10px;	
}

.g-bill .g-b-box .g-b-title {
	width:800px;
	height:35px;	
	margin:0 auto;
/* 	display:none; */
}

.g-bill .g-b-box .g-b-title input[type='text'] {
	width:300px;
	height:15px;	
	padding:5px 10px;
}

.g-submit .g-s-box {
	width:1000px;
	background: #fafafa;
	padding-bottom: 40px;
}

.g-submit .g-s-box .g-s-item{
	padding-top:30px;
	width:800px;
	height:35px;
	margin:0 auto;
}
.g-submit .g-s-box .g-s-item a {
	width:150px;
	height:40px;
	line-height:40px;
	text-align:center;
	background:#1CBD9D;
	display:block;
	color:#fff;
}

</style>
</head>

<body>
	<%@include file="../../../header.jsp"%>
	<!-- 导航 -->
	<div class="order-nav">
		<div class="o-nav-box">
			<ul>
				<li class="bg-orange"><a href="${basePath }home.jsp" class="o-nav-title">首页</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">1.确认订单信息</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">2.选择支付方式</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">3.确认支付</a></li>
				<li><a href="javascript:void(0);" class="o-nav-title">4.订单下达成功</a></li>
			</ul>
		</div>
	</div>

	<!-- 预约产品信息 -->
	<div class="order-info">
		<div class="o-info-title">
			<a href="javascript:void(0);" class="">1.确认订单信息</a>
		</div>
		<div class="o-info-list pt10">
			<div class="o-i-items">
				<div class="item-title">
					<span class="text-orange fs18">订单号：</span><a href="javascript:void(0);" class="text-orange fs18"> 8602309203</a>
				</div>
				<!-- table部分 开始-->
				<div class="items">
					<table>
						<thead>
							<tr>
								<th style="width:90px">序号</th>
								<th style="width:400px">名称</th>
								<th style="width:90px">单价</th>
								<th style="width:70px">单位</th>
								<th style="width:60px">数量</th>
								<th style="width:100px">总价</th>
								<th style="width:120px">操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>萝卜干麻辣味</td>
								<td>13.12</td>
								<td>包</td>
								<td><input type="number" name="number" value="11" readonly="readonly" id="order-qty"></td>
								<td>33.4</td>
								<td><span class="edit">编辑</span> <span>|</span> <span class="delete">删除</span></td>
							</tr>
							<tr>
								<td>1</td>
								<td>萝卜干麻辣味</td>
								<td>13.12</td>
								<td>包</td>
								<td><input type="number" name="number" value="11" readonly="readonly" id="order-qty"></td>
								<td>33.4</td>
								<td><span class="edit">编辑</span> <span>|</span> <span class="delete">删除</span></td>
							</tr>
							<tr>
								<td>1</td>
								<td>萝卜干麻辣味</td>
								<td>13.12</td>
								<td>包</td>
								<td><input type="number" name="number" value="11" readonly="readonly" id="order-qty"></td>
								<td>33.4</td>
								<td><span class="edit">编辑</span> <span>|</span> <span class="delete">删除</span></td>
							</tr>
							<tr>
								<td>1</td>
								<td>萝卜干麻辣味</td>
								<td>13.12</td>
								<td>包</td>
								<td><input type="number" name="number" value="11" readonly="readonly" id="order-qty"></td>
								<td>33.4</td>
								<td><span class="edit">编辑</span> <span>|</span> <span class="delete">删除</span></td>
							</tr>
							<tr>
								<td>1</td>
								<td>萝卜干麻辣味</td>
								<td>13.12</td>
								<td>包</td>
								<td><input type="number" name="number" value="11" readonly="readonly" id="order-qty"></td>
								<td>33.4</td>
								<td><span class="edit">编辑</span> <span>|</span> <span class="delete">删除</span></td>
							</tr>
							<tr>
								<td>1</td>
								<td>萝卜干麻辣味</td>
								<td>13.12</td>
								<td>包</td>
								<td><input type="number" name="number" value="11" readonly="readonly" id="order-qty"></td>
								<td>33.4</td>
								<td><span class="edit">编辑</span> <span>|</span> <span class="delete">删除</span></td>
							</tr>
							<tr class="text-orange fs20">
								<td colspan="5">总金额</td>
								<td colspan="2">33.4</td>
							</tr>
						</tbody>
					</table>
				</div>


			</div>
			<!-- table部分 结束-->
		</div>
	</div>
	<!-- 支付 方式 -->
	<div class="g-pay">
		<div class="o-info-title">
			<a href="javascript:void(0);" class="">2.选择支付方式</a>
		</div>
		<div class="pay">
			<div class="pay-box">
				<div class="pay-left">
					<label> <input type="radio" checked="checked" name="payType">
						<img alt="" src="${basePath }images/alipay_165x58.png" width="89px">
					</label> <label><input type="radio" name="payType">现金支付</label>
					<label> <input type="radio"  name="payType">银行转帐
						(暂不支付在线支付)
					</label>
				</div>
		
				<div class="pay-right">
					<i>—————————— 帐号列表 ——————————</i> <i>支付宝帐号：pay@hyteahouse.com
						&nbsp;&nbsp;&nbsp;张子旺</i> <i>建设银行帐号：8888 8888 8888 8888 888
						&nbsp;&nbsp;&nbsp;张子旺</i> <i>中国银行帐号：8888 8888 8888 8888
						888&nbsp;&nbsp;&nbsp;张子旺</i> <i>工商银行帐号：8888 8888 8888 8888
						888&nbsp;&nbsp;&nbsp;张子旺</i> <i>农业银行帐号：8888 8888 8888 8888
						888&nbsp;&nbsp;&nbsp;张子旺</i>
				</div>
			</div>
		</div>
	</div>
	<!-- 发票信息 -->
	<div class="g-bill">
		<div class="o-info-title">
			<a href="javascript:void(0);" class="">3.发票申领信息</a>
		</div>
		<div class="g-b-box">
			<div class="g-b-item">
				<label>开票类型：
					<select>
						<option>不开票</option>
						<option>公司</option>
						<option>个人</option>
					</select>
				</label>
			</div>
			<div class="g-b-title">
				<label>发票抬头： <input type="text"></label>
			</div>			
		</div>
	</div>
	
	<!-- 发票信息 -->
	<div class="g-submit">
		<div class="o-info-title">
			<a href="javascript:void(0);" class="">4.确认订单</a>
		</div>
		<div class="g-s-box">
			<div class="g-s-item fs18">
				<a href="javascript:void(0);" id="paysubmit">提交订单</a>
			</div>
		</div>
	</div>	
	<%@include file="../../../footer.jsp"%>

	<script type="text/javascript">
		$("#paysubmit").on("click",function(){
			window.location.href = "${basePath}buy/submit";
			
		});
		
		/* 编辑数据 */
		$(".edit").on("click",function(){
			var tr = $(this).parents("tr");
			var number = tr.find("input");
			number.removeAttr("readonly").css({"background":"#fff","color":"red"});
		});
		
		/* 修改并保存数量 */
		$("#order-qty").on("blur",function(){
			$(this).attr("readonly","readonly").css({"background":"#fafafa","color":"#000"});
			
		});
		
	</script>
</body>
</html>
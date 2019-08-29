<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
	<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
	<meta name="renderer" content="webkit">
	<!--国产浏览器高速模式-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="企业销售管理系统" />
	<!-- 作者 -->
	<meta name="revised" content="企业销售管理系统.v3, 2019/05/01" />
	<!-- 定义页面的最新版本 -->
	<meta name="description" content="网站简介" />
	<!-- 网站简介 -->
	<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
	<title>企业销售管理系统</title>

	<!-- 公共样式 开始 -->
	<link rel="stylesheet" type="text/css" href="../../css/base.css">
	<link rel="stylesheet" type="text/css" href="../../fonts/iconfont.css">
	<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
	<script type="text/javascript" src="../../layui/layui.js"></script>
	<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
	<!-- 公共样式 结束 -->

	<script src="../../js/out_intoData.js"></script>

</head>

<body>
<div class="cBody">
	<div class="console"  >
		<form id=sform class="layui-form" method=post action="/order/search">
			<input type="hidden" id="hpageNum" name="pageNum" >
			<div class="layui-form-item">
				<div class="layui-input-inline" >
					<input type="text" name="orderid"  value="${pa.orderid}" autocomplete="off"  placeholder="输入订单号"class="layui-input" >
				</div>
				<div class="layui-input-inline">
					<input type="text" name="customer.cusName" value="${pa.customer.cusName}" autocomplete="off"  placeholder="输入客户"class="layui-input">

				</div>
				<%--<button class="layui-btn" lay-submit lay-filter="submitBut">检索</button>--%>
				<div class="layui-input-inline">
					<button class="layui-btn" type=submit >
						搜索公司</button>
				</div>
		</form>
	</div>

	<table id="customList" class="layui-table">
		<thead>
		<tr>
			<th>订单号</th>
			<th>入库日期</th>
			<th>客户</th>
			<th>操作</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${pageInfo.list}" var="order">
			<tr>
				<td>${order.OId}</td>
				<td><input style="border:0" value="<fmt:formatDate value="${order.ODate}" pattern="yyyy-MM-dd"></fmt:formatDate>"></td>
				<td>${order.customer.cusName}</td>
				<td>
					<button class="layui-btn layui-btn-xs" ><a href="/detail/searchById?id=${order.OId}">详情</a></button>
					<button class="layui-btn layui-btn-xs" onclick="del()"><a href="/order/delete?id=${order.OId}">删除</a></button>
					<%--<button class="layui-btn layui-btn-xs" ><a href="/order/searchById?id=${order.OId}">新增</a></button>--%>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</div>


<script>

	function del() {

		alert("删除成功");
	}
</script>

<!-- layUI 分页模块 -->
<div class="h_55"></div>
<DIV class=pager>
	<UL>
		<LI ><A href="javascript:void(0)" onclick="dosubmit(${1})">首页</A></LI>
		<LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasPreviousPage?pageInfo.prePage:pageInfo.pageNum})">上一页</A></LI>
		<LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasNextPage?pageInfo.nextPage:pageInfo.pageNum})">下一页</A></LI>
		<LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.pages})">末页</A></LI></UL><SPAN>
			    ${pageInfo.pageNum}/${pageInfo.pages}页</SPAN> </DIV>
<script>
	function dosubmit(pageNum){
		var p = document.getElementById("hpageNum");
		p.value = pageNum;
		var form = document.getElementById("sform");
		form.submit();
	}

</script>

</div>

</body>

</html>
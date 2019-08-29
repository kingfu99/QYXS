<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

	</head>

	<body>
		<div class="cBody" >
			<div class="console"  >
				<form id=sform class="layui-form" method=post action="/customer/search">
						<input type="hidden" id="hpageNum" name="pageNum" >
					<div class="layui-form-item">
						<div class="layui-input-inline" >
							<input type="text" name="title"  value="${page.title}" autocomplete="off"  placeholder="输入公司名称"class="layui-input" >
						</div>
							<div class="layui-input-inline">
							<input type="text" name="cityid" value="${page.cityid}" autocomplete="off"  placeholder="输入公司城市"class="layui-input">

					</div>
						<%--<button class="layui-btn" lay-submit lay-filter="submitBut">检索</button>--%>
						<div class="layui-input-inline">
						<button class="layui-btn" type=submit >
						搜索公司</button>
						</div>
				</form>
					</div>


			<%--	<script>
					layui.use('form', function() {
						var form = layui.form;
				
						//监听提交
						form.on('submit(submitBut)', function(data) {
							layer.msg(JSON.stringify(data.field));
							return false;
						});
					});
				</script>--%>
			</div>
			
			<table class="layui-table">
				<thead>
					<tr>
						<th>公司名称</th>
						<th>ID号</th>
						<th>所属区域</th>
						<th>负责人</th>
						<th>联系方式</th>
						<th>邮箱</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${pageInfo.list}" var="customer">
					<tr>
						<td>${customer.cusName}</td>
						<td>${customer.cusId}</td>
						<td>${customer.cusAdd2}</td>
						<td>${customer.cusPo}</td>
						<td>${customer.cusTel}</td>
						<td>${customer.cusEmail}</td>
						<td>

							<button class="layui-btn layui-btn-xs" ><a href="/customer/searchById?identity=${customer.cusId}")>修改</a></button>
							<button class="layui-btn layui-btn-xs" onclick="del()"><a href="/customer/delete?identity=${customer.cusId}")>删除</a></button>
						</td>
					</tr>
				</c:forEach>

				</tbody>
			</table>

<script>

	function del() {

			alert("删除成功");
	}
</script>

			<!-- layUI 分页模块 -->
		<div class="h_55"></div>
			<DIV class=pager>
				<UL>
					<LI ><A href="javascript:void(0)" onclick="dosubmit(1)">首页</A></LI>
					<LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasPreviousPage?pageInfo.prePage:pageInfo.pageNum})">上一页</A></LI>
					<LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasNextPage?pageInfo.nextPage:pageInfo.pageNum})">下一页</A></LI>
					<LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.pages})">末页</A></LI></UL><SPAN
					>${pageInfo.pageNum}/${pageInfo.pages}页</SPAN> </DIV>
			<script>
				function dosubmit(pageNum){
					var p = document.getElementById("hpageNum");
					p.value = pageNum;
					var form = document.getElementById("sform");
					form.submit();
				}

			</script>
		<!-- 三级省市 插件 -->
		<script src="../../framework/area.js"></script>
		<script src="../../framework/province.js"></script>

		</div>
	</body>

</html>
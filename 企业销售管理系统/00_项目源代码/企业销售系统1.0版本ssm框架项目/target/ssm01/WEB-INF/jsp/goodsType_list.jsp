<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
		<div class="cBody">
			<div class="console">
				<form class="layui-form" id="tform" action="/category/search" method="post" >
                    <input type="hidden" id="hpageNum" name="pageNum" >
					<div class="layui-form-item">
						<div class="layui-input-inline">
							<input type="text" name="cname"  placeholder="输入分管名称"  class="layui-input" value="${vo1.cname}">
						</div>
						<input class="layui-btn" type="submit" value="检索">
					</div>
				</form>

			</div>
			
			<table class="layui-table">
				<thead>
					<tr>
						<th>名称</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
                <c:forEach items="${pageInfo.list}" var="category">
                <tr>
						<td>${category.cname}</td>
						<td>
                            <a href="/category/showone?cid=${category.cid}"><input class="layui-btn layui-btn-xs" type="submit" value="修改" ></a>
                            <a href="/category/delete?cid=${category.cid}"><input class="layui-btn layui-btn-xs layui-btn-normal" type="submit" value="删除"></a>
						</td>
					</tr>
                </c:forEach>
				</tbody>
			</table>
			

            <!-- layUI 分页模块 -->
            <div class="h_55"></div>
            <DIV class="pager">
                <UL>
                    <LI class=current><A href="javascript:void(0)" onclick="dosubmit(1)">首页</A></LI>
                    <LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasPreviousPage?pageInfo.prePage:pageInfo.pageNum})">上一页</A></LI>
                    <LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.hasNextPage?pageInfo.nextPage:pageInfo.pageNum})">下一页</A></LI>
                    <LI><A href="javascript:void(0)" onclick="dosubmit(${pageInfo.pages})">末页</A></LI></UL><SPAN
                    class=total>${pageInfo.pageNum}/${pageInfo.pages}页</SPAN> </DIV>
		<script>
            function dosubmit(pageNum){
                var p = document.getElementById("hpageNum");
                p.value = pageNum;
                var form = document.getElementById("tform");
                form.submit();
            }
        </script>
        </div>
	</body>

</html>
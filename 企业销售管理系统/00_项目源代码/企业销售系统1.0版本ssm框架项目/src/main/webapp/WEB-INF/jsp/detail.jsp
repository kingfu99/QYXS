<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
		<script src="../../framework/printThis.js"></script>
		<!-- 公共样式 结束 -->
		

	</head>

	<body>
		<div class="cBody">
			<div class="console">
				<div class="layui-form-item">

					<a class="layui-btn" href="/order/searchById?id=${order.OId}" >新增</a>

				</div>
				<div class="layui-form-item">
					<a class="layui-btn layui-btn-sm layui-btn-normal" onclick="printTable('dayindaju1')">打印</a>
				</div>


			</div>
			<FORM id=sform method=post action=/detail/searchById>
			<div class="layui-row" id="dayindaju1">
				<table class="layui-table printTable">
					<tbody>
						<tr>
							<td class="printName" colspan="7">订单详情</td>
						</tr>

						<tr>
							<td class="printDis" colspan="7">
								<c:forEach items="${detail}" var="detail" varStatus="stas" >
										<c:if test="${stas.index==0    }">
											<span><input style="border:0" value="<fmt:formatDate value="${detail.order.ODate}" pattern="yyyy-MM-dd"></fmt:formatDate>"></span>
											<span class="right">订单号：${detail.order.OId}，客户：${detail.order.customer.cusName}</span>

									</c:if>

								</c:forEach>
								<span>商品出库</span>
							</td>
						</tr>

						<tr>
							<th width="8%" class="textCenter">序号</th>
							<th width="20%">商品名称</th>
							<th width="10%" class="textCenter">规格</th>
							<th width="10%" class="textCenter">出库数量</th>
							<th width="10%" class="textCenter">单价</th>
							<th width="10%" class="textCenter">金额</th>
							<th width="10%" class="textCenter">操作</th>
						</tr>
						<c:forEach items="${detail}" var="detail"  varStatus="xh">
						<tr>
							<td class="textCenter">${xh.count}</td>
							<td>${detail.goods.gName}</td>
							<td class="textCenter">${detail.goods.gGg}</td>
							<td class="textCenter" >${detail.detNum}</td>
							<td class="textCenter">${detail.GPrice}</td>
							<td class="textCenter">${detail.detMoney}</td>
							<td><button class="layui-btn" ><a href="/detail/delete?id=${detail.detId} ">删除</a></button></td>
						</tr>
</c:forEach>


					</tbody>
				</table>
			</div>
			</form>
		</div>
		<script>
			//打印方法
			function printTable(id){
				$('#'+id).printThis({ importCss: true, importStyle: true });
			}
		</script>
	</body>

</html>
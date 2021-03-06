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


	<style>
		.layui-form{
			margin-right: 30%;
		}
	</style>

</head>

<body>
<div class="cBody">



	<form id="addForm" class="layui-form" method=post action="/detail/fabu" enctype="multipart/form-data" >
 <div class="layui-form-item">
              <label class="layui-form-label">订单号</label>
              <div class="layui-input-inline shortInput">
                  <input type="text" name="order.OId"  readonly style="background:#CCCCCC" value="${order.OId}" autocomplete="off" class="layui-input">
              </div>
          </div>


		<div class="layui-form-item">
			<label class="layui-form-label">商品</label>
			<div class="layui-input-inline shortInput">
				<input type="text" name="goods.ggId" class="layui-input">
			</div>
		</div>


		   <div class="layui-form-item">
               <label class="layui-form-label">价格</label>
               <div class="layui-input-inline shortInput">
                   <input type="text" name="goodsPrice"  class="layui-input">
               </div>
           </div>
           <div class="layui-form-item">
               <label class="layui-form-label">数量</label>
               <div class="layui-input-inline shortInput">
                   <input type="text" name="detailNum" autocomplete="off" class="layui-input">
               </div>
           </div>
           <div class="layui-form-item">
               <label class="layui-form-label">总金额</label>
               <div class="layui-input-inline shortInput">
                   <input type="text" name="detailMoney" autocomplete="off" class="layui-input">
               </div>
           </div>

		<%--  <div class="layui-form-item">
              <label class="layui-form-label">传真</label>
              <div class="layui-input-inline shortInput">
                  <input type="text" name="title" autocomplete="off" class="layui-input">
              </div>
          </div>--%>



		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="submitBut" >立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>





</div>
</body>

</html>
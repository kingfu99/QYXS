<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
		<link rel="shortcut icon" href="../../images/favicon.ico"/>
		<link rel="bookmark" href="../../images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="../../css/base.css">
		<link rel="stylesheet" type="text/css" href="../../fonts/iconfont.css">
		<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js" ></script>
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
	    <!--[if lt IE 9]>
	      	<script src="../../framework/html5shiv.min.js"></script>
	      	<script src="../../framework/respond.min.js"></script>
	    <![endif]-->
		<script type="text/javascript" src="../../layui/layui.js"></script>
		<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->

		<link rel="stylesheet" type="text/css" href="../../css/login.css">
		<script type="text/javascript" src="../../js/login.js"></script>
	</head>

	<body>
		
		<!--主体 开始-->
		<div class="login_main">
			<!--轮播图 开始-->
			<div class="layui-carousel lbt" id="loginLbt">
				<div carousel-item>
					<div class="item" style="background: url(../../images/login_bg1.jpg) no-repeat; background-size: cover;"></div>
					<div class="item" style="background: url(../../images/login_bg2.jpg) no-repeat; background-size: cover;"></div>
				</div>
			</div>
			<!--轮播图 结束-->
			<div class="logo">
				<img src="../../images/login_logo.png" />
				<div>
					<h1>企业销售系统</h1>
					<p>版本号:1.0</p>
				</div>
			</div>
			<div class="form_tzgg">
				<div class="form">
					<form action="/user/dologin" method="post" class="layui-form">
						<div class="title">用户登录</div>

						<div class="con" onclick="getFocus(this)">
							<input type="text" name="name" lay-verify="userName" placeholder="请输入您的用户名" autocomplete="off" class="layui-input">

						</div>
						<div class="con" onclick="getFocus(this)">
							<input type="password" name="password" required  lay-verify="passWord" placeholder="请输入您的账户密码" autocomplete="off" class="layui-input">

                        </div>
						<div class="but">
                            <button  type="submit" class="layui-btn"  lay-filter="submitBut">登录</button>
                        </div>

                    </form>
				</div>

				<div class="tzgg">
					<div class="title">通知公告</div>
					<div class="con">
						<ul>
							<li><span>08-16</span><a href="" target="_blank">企业销售系统升级</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--主体 结束-->
	</body>

</html>
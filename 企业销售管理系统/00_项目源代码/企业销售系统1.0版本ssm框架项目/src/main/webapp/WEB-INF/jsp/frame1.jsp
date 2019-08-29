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
		<meta name="description" content="企业销售管理系统" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>企业销售管理系统</title>

		<!-- 公共样式 开始 -->
		<link rel="shortcut icon" href="../../images/favicon.ico"/>
		<link rel="bookmark" href="../../images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="../../css/base.css">
		<link rel="stylesheet" type="text/css" href="../../fonts/iconfont.css">
		<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js" ></script>
		<script type="text/javascript" src="../../js/base.js"></script>
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
	    <!--[if lt IE 9]>
	      	<script src="../../framework/html5shiv.min.js"></script>
	      	<script src="../../framework/respond.min.js"></script>
	    <![endif]-->
		<script type="text/javascript" src="../../layui/layui.js"></script>
		<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<link rel="stylesheet" type="text/css" href="../../css/frameStyle.css">
		<script type="text/javascript" src="../../framework/frame.js" ></script>

	</head>

	<body>
		<!-- 左侧菜单 - 开始 -->
		<div class="frameMenu">
		    <div class="logo">
		        <img src="../../images/logo.png"/>
		        <div class="logoText">
		            <h1>企业商品销售系统</h1>
		        </div>
		    </div>
		    <div class="menu">
		    	<div class="hoverBox" ></div>
		        <ul>

		        	<li >
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-liuliangyunpingtaitubiao03 left" onmouseenter="getLeftTips(this, '代理商管理')" onmouseleave="layer.closeAll('tips')"></i><font>代理商管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('/customer/add',this, 'page10022')">添加代理商</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('/customer/search',this, 'page10023')">代理商列表</a></dt>
		                </dl>
		            </li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-shangpin left" onmouseenter="getLeftTips(this, '商品管理')" onmouseleave="layer.closeAll('tips')"></i><font>商品管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/category/search',this, 'page10024')">分类列表</a></dt>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/goods/search',this, 'page10025')">基本商品库</a></dt>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/goods/add',this, 'page10026')">添加商品</a></dt>
                            <dt><a href="javascript:void(0)" onclick="menuCAClick('/category/add',this, 'page10027')">添加类别</a></dt>
		                </dl>
		            </li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon left" onmouseenter="getLeftTips(this, '日志管理')" onmouseleave="layer.closeAll('tips')"></i><font>日志管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('/sysLog/findAll',this, 'page10034')">AOP日志</a></dt>
		                </dl>
		           	</li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon left" onmouseenter="getLeftTips(this, '报表模块')" onmouseleave="layer.closeAll('tips')"></i><font>报表模块</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>
		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('../tgls/reportForm/reportForm1.jsp',this, 'page10035')">订单统计报表</a></dt>
		                </dl>
		           	</li>
		        	<li>
		                <a class="menuFA" href="javascript:void(0)"><i class="iconfont icon-icon left" onmouseenter="getLeftTips(this, '订单管理')" onmouseleave="layer.closeAll('tips')"></i><font>订单管理</font><i class="iconfont icon-dajiantouyou right"></i></a>
		                <dl>

		                	<dt><a href="javascript:void(0)" onclick="menuCAClick('/order/search',this, 'page10037')">订单管理</a></dt>
							<dt><a href="javascript:void(0)" onclick="menuCAClick('../tgls/into_out/intoData.jsp',this, 'page10036')">添加订单</a></dt>
		                </dl>
		           </li>
		        </ul>
		    </div>
		</div>
		<!-- 左侧菜单 - 结束 -->
		
		<div class="main">
			<!-- 头部栏 - 开始 -->
			<div class="frameTop">
				<div class="shrinkBut">
		    		<div class="hoverBox"></div>
					<ul>
						<li><a href="javascript:void(0)" onclick="menuShrink(this)" onmouseenter="getTips(this, '收缩菜单')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-caidan-shousuo"></i></a></li>
						<li><a href="javascript:void(0)" onclick="frameRefresh()" onmouseenter="getTips(this, '刷新')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-htmal5icon23"></i></a></li>
					</ul>
				</div>
				<div class="topMenu">
		    		<div class="hoverBox"></div>
					<ul>
						<li><a href="javascript:void(0)" onclick="menuCAClick('tgls/modify_password.html',this, 'pageNotice', '通知公告')" onmouseenter="getTips(this, '通知公告')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-tongzhigonggao1"></i><span class="news"></span></a></li>
						<li><a href="javascript:void(0)" id="fullScreenBut" onclick="fullScreen('fullScreenBut')" onmouseenter="getTips(this, '全屏')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-full-screen"></i></a></li>

						<li><a href="/user/exit" onmouseenter="getTips(this, '退出系统')" onmouseleave="layer.closeAll('tips')"><i class="iconfont icon-084tuichu"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- 头部栏 - 结束 -->
			
			<!-- 核心区域 - 开始 -->
			<div class="frameMain">
				<div class="title" id="frameMainTitle">
					<i class="iconfont icon-shuangzuojiantou- leftbut" onclick="pageShow('l')"></i>
					<div class="mainPageBox">
						<div class="mainPage">
							<span class="active" onclick="pageSwitch(this)">
			    				<div class="hoverBox"></div>
								<i class="iconfont icon-shouye"></i>
							</span>
						</div>
					</div>
					<i class="iconfont icon-shuangyoujiantou- rightbut" onclick="pageShow('r')"></i>
					<i class="iconfont icon-iconfontarrows1 rightbut pageAllBut">
						<dl>
		                	<dt><a href="javascript:void(0)" onclick="nowpageClose()">关闭当前标签页</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="otherpageClose()">关闭其它标签页</a></dt>
		                	<dt><a href="javascript:void(0)" onclick="allpageClose()">关闭全部标签页</a></dt>
		                </dl>
					</i>
				</div>
				<div class="con">
					<div class="mainPageCon">
						<iframe class="mainIframe" src="../../tgls/index.jsp" scrolling="yes"></iframe>
					</div>
				</div>
			</div>
			<!-- 核心区域 - 结束 -->
		</div>
	</body>

</html>
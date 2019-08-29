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
		<meta name="author" content="穷在闹市" />
		<!-- 作者 -->
		<meta name="revised" content="穷在闹市.v3, 2019/05/01" />
		<!-- 定义页面的最新版本 -->
		<meta name="description" content="网站简介" />
		<!-- 网站简介 -->
		<meta name="keywords" content="搜索关键字，以半角英文逗号隔开" />
		<title>穷在闹市出品</title>

		<!-- 公共样式 开始 -->
		<link rel="stylesheet" type="text/css" href="../../css/base.css">
		<link rel="stylesheet" type="text/css" href="../../fonts/iconfont.css">
		<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
		<script type="text/javascript" src="../../layui/layui.js"></script>
		<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<link rel="stylesheet" type="text/css" href="../../css/reportForm.css">

	</head>

	<body>
		<div class="cBody">
			<div class="console">
				<form class="layui-form" action="">



				</form>

			</div>
			
			<div class="reportForm_main">
				<div class="collectData">
				    <div class="layui-row">
						<div class="layui-col-md3 br">
							<div class="layui-col-md6">
								<div class="title">订货单</div>
								<div class="nums"><font>56</font><span>笔</span></div>
							</div>

						</div>
						<div class="layui-col-md3 br">
							<div class="layui-col-md6">
								<div class="title">订货客户数</div>
								<div class="nums"><font>53</font></div>
							</div>

						</div>
						<div class="layui-col-md2">
							<div class="title">订货金额</div>
							<div class="nums"><font>36889.48</font></div>
						</div>


					</div>
				</div>
				
				<div class="reportType_tj">
					<form class="layui-form" action="">
		                <div class="layui-input-inline">
		                    <select name="reportType" id="reportType" lay-filter="reportType">
		                        <%--<option value="订单数量">订单数量</option>--%>
		                        <option value="订货金额">订货金额</option>

		                    </select>
		                </div>
		                <div class="layui-input-inline">
							<a class="pressBut active" onclick="refreshData([8617.68, 5996.95, 2747,0 ,7959.55, 9057.2, 2511.1],this)">按天</a>
							<a class="pressBut" onclick="refreshData([133047.83,12656.4,90414.97,93442.64,136781.31,160118.31,155682.17],this)">按月</a>
		                </div>
		                <div class="changeRate">
						<div class="layui-col-md6 left">40000</div>
							<div class="layui-col-md6 right">
								<!--上升-->
								<!--<span class="data up">-99.42%<i class="iconfont icon-xiangshangjiantoucuxiao"></i></span>-->
								<!--下降-->
								<span class="data">-7.78%<i class="iconfont icon-xiangxiajiantoucuxiao"></i></span>
								<span class="text">相比上周期</span>
							</div>
		                </div>
		                <div id="myReport" style="width: 100%; height: 400px;"></div>
		                <script src="../../framework/echarts.min.js"></script>
		                <script type="text/javascript">
					        // 基于准备好的dom，初始化echarts实例
					        var myChart = echarts.init(document.getElementById('myReport'));
					
					        // 指定图表的配置项和数据
					        var option = {
							    xAxis: [{
							        type: 'category',
							        boundaryGap: false,
							        data: ['2018-12-23', '2018-12-24', '2018-12-25', '2018-12-26', '2018-12-27', '2018-12-28', '2018-12-29'],

							    },
							{
								type: 'category',
										boundaryGap: false,
									data: ['6月','7月', '8月', '9月', '10月', '11月', '12月'],


							}],
							    yAxis: {
							        type: 'value'
							    },
							    grid:{
							    	top: 20,
							    	bottom: 20,
							    	left: 50,
							    	right: 50
							    },
							    series: [{
							        data: [8617.68, 5996.95, 2747,0 ,7959.55, 9057.2, 2511.1],
							        type: 'line',
							        areaStyle: {},
									itemStyle : { normal: {label : {show: true}}}
							    }
								]
							};
					        myChart.setOption(option);

					        function refreshData(data,_this) {
					        	$(_this).addClass("active");
					        	$(_this).siblings().removeClass("active");
					        	if(!myChart) {
					        		return;
					        	}

					        	//更新数据
					        	var option = myChart.getOption();
					        	option.series[0].data = data;
					        	myChart.setOption(option);
					        }
		                </script>
					</form>
	
				</div>
				

			</div>

			
			
			
		</div>
	</body>

</html>
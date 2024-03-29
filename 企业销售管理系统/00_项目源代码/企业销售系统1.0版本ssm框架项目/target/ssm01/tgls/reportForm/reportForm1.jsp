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
					<div class="layui-form-item">
						<div class="reportForm">
							<a class="typeBut bl active">本周</a>
							<a class="typeBut">上周</a>
							<a class="typeBut">本月</a>
							<a class="typeBut br">上月</a>
						</div>
						<div class="layui-input-inline">
				        	<input type="text" class="layui-input" id="time" placeholder=" - ">
						</div>
						<button class="layui-btn" lay-submit lay-filter="submitBut">检索</button>
						<a class="layui-btn layui-btn-primary exportBut" href="#">导出</a>
					</div>
				</form>

			</div>
			
			<div class="reportForm_main">
				<div class="collectData">
				    <div class="layui-row">
						<div class="layui-col-md3 br">
							<div class="layui-col-md6">
								<div class="title">订货单</div>
								<div class="nums"><font>1</font><span>笔</span></div>
							</div>
							<div class="layui-col-md6">
								<div class="title">退货单</div>
								<div class="nums"><font>0</font><span>笔</span></div>
							</div>
						</div>
						<div class="layui-col-md3 br">
							<div class="layui-col-md6">
								<div class="title">订货客户数</div>
								<div class="nums"><font>1</font></div>
							</div>
							<div class="layui-col-md6">
								<div class="title">退货客户数</div>
								<div class="nums"><font>1</font></div>
							</div>
						</div>
						<div class="layui-col-md2">
							<div class="title">订货金额</div>
							<div class="nums"><font>115.20</font></div>
						</div>
						<div class="layui-col-md2">
							<div class="title">退货金额</div>
							<div class="nums"><font>0.00</font></div>
						</div>
						<div class="layui-col-md2">
							<div class="title">金额合计</div>
							<div class="nums"><font>115.20</font></div>
						</div>
					</div>
				</div>
				
				<div class="reportType_tj">
					<form class="layui-form" action="">
		                <div class="layui-input-inline">
		                    <select name="reportType" id="reportType" lay-filter="reportType">
		                        <option value="订单数量">订单数量</option>
		                        <option value="退货单数">退货单数</option>
		                        <option value="订货金额">订货金额</option>
		                        <option value="退货金额">退货金额</option>
		                        <option value="金额合计">金额合计</option>
		                    </select>
		                </div>
		                <div class="layui-input-inline">
							<a class="pressBut active" onclick="refreshData([82, 2, 91, 34, 10, 120, 20],this)">按天</a>
							<a class="pressBut" onclick="refreshData([10, 21, 1, 134, 210, 520, 420],this)">按周</a>
							<a class="pressBut" onclick="refreshData([82, 2, 91, 34, 10, 120, 20],this)">按月</a>
		                </div>
		                <div class="changeRate">
							<div class="layui-col-md6 left">115.20</div>
							<div class="layui-col-md6 right">
								<!--上升-->
								<!--<span class="data up">-99.42%<i class="iconfont icon-xiangshangjiantoucuxiao"></i></span>-->
								<!--下降-->
								<span class="data">-99.42%<i class="iconfont icon-xiangxiajiantoucuxiao"></i></span>
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
							    xAxis: {
							        type: 'category',
							        boundaryGap: false,
							        data: ['2018-03-01', '2018-03-02', '2018-03-03', '2018-03-04', '2018-03-05', '2018-03-06', '2018-03-07']
							    },
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
							        data: [820, 932, 901, 934, 1290, 1330, 1320],
							        type: 'line',
							        areaStyle: {}
							    }]
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
				
				<table class="layui-table dataTable" lay-skin="line">
					<thead>
						<tr>
							<th>日期（2018-03-01~2018-03-05）</th>
							<th>订货单</th>
							<th>退货单</th>
							<th>订货客户数</th>
							<th>退货客户数</th>
							<th>订货金额</th>
							<th>退货金额</th>
							<th>金额小计</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2018-03-05</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2018-03-04</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2018-03-03</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2018-03-02</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
						<tr>
							<td>2018-03-01</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
							<td>0</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- layUI 分页模块 -->
			<div class="h_55"></div>
			<div id="pages"></div>
			<script>
				layui.use(['form','laydate', 'layer', 'laypage'], function() {
					var form = layui.form;
					var laydate = layui.laydate;
					var laypage = layui.laypage,
						layer = layui.layer;
			
					//监听提交
					form.on('submit(submitBut)', function(data) {
						layer.msg(JSON.stringify(data.field));
						return false;
					});
					laydate.render({
					    elem: '#time' 
				    	,range: true
					});
					//select监听
					form.on('select(reportType)', function(data){
					  console.log(data.elem); //得到select原始DOM对象
					  console.log(data.value); //得到被选中的值
					  console.log(data.othis); //得到美化后的DOM对象
					});
					
				
					//总页数大于页码总数
					laypage.render({
					    elem: 'pages'
					    ,count: 5
					    ,layout: ['prev', 'page', 'next', 'limit', 'skip']
					    ,jump: function(obj){
					      console.log(obj)
					    }
					});
				});
			</script>
			
			
			
		</div>
	</body>

</html>
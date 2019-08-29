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
		<link rel="stylesheet" type="text/css" href="../../css/base.css">
		<link rel="stylesheet" type="text/css" href="../../fonts/iconfont.css">
		<script type="text/javascript" src="../../framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="../../layui/css/layui.css">
		<script type="text/javascript" src="../../layui/layui.js"></script>
		<script src="../../framework/cframe.js"></script><!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->
		
		<style>
			.layui-form-label{
				width: 100px;
			}
			.layui-input-block{
				margin-left: 130px;
			}
		</style>

	</head>

	<body>
		<div class="cBody">
			<form id="addForm" class="layui-form" method="post" action="/goods/update" enctype="multipart/form-data">
                <input type="hidden" name=gid value="${goods.gId}">
				<div class="layui-form-item">
					<label class="layui-form-label">商品名称</label>
					<div class="layui-input-block">
						<input type="text" name="gname" required lay-verify="required" autocomplete="off" class="layui-input" value="${goods.gName}">
					</div>
				</div>
                <div class="layui-form-item">
                    <label class="layui-form-label">商品图片</label>
                    <div class="layui-upload-drag" id="goodsPic">
                        <i class="layui-icon"></i>
                        <img src="/goods/images?imgName=${goods.gImg}">
                        <input id="img" type="file" name="gimg">
                    </div>
                </div>

				<div class="layui-form-item">
					<label class="layui-form-label">参考价格</label>
					<div class="layui-input-block">
						<input type="text" name="gprice" value="${goods.gPrice}" required lay-verify="required|number" autocomplete="off" class="layui-input">
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">商品数量</label>
					<div class="layui-input-block">
						<input type="text" name="ggg" value="${goods.gGg}" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">描述</label>
					<div class="layui-input-block">
						<input type="text" name="bz" value="${goods.gBz}"  class="layui-textarea"></input>
					</div>
				</div>


                <div class="layui-form-item">
                    <label class="layui-form-label">商品类别</label>
                    <div class="layui-input-inline">
                        <select name="provid" id="provid" lay-filter="provid" >
                            <option ${goods.category==8?"selected":""} value=水果>水果</option>
                            <option ${goods.category==1?"selected":""} value="谷类制品">谷类制品</option>
                            <option ${goods.category==2?"selected":""} value="海鲜">海鲜</option>
                            <option ${goods.category==3?"selected":""} value="零食">零食</option>
                            <option ${goods.category==4?"selected":""} value="肉类">肉类</option>
                            <option ${goods.category==5?"selected":""} value="特制品">特制品</option>
                            <option ${goods.category==6?"selected":""} value="调味品">调味品</option>
                            <option ${goods.category==7?"selected":""} value="饮料">饮料</option>
                        </select>
                    </div>
				<div class="layui-form-item">
					<div class="layui-input-block">
                        <input  class="layui-btn layui-btn-xs" type="submit" value="立即提交" name="update">
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
             </div>
			</form>

			
			<script>
				layui.use(['upload','form'], function() {
					var form = layui.form;
					var upload = layui.upload;
					var layer = layui.layer;
					//监听提交
					//解决了layui.open弹窗从内部关闭这个弹窗的问题
					form.on('submit(submitBut)', function(data) {
						var updateFrame = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
						parent.layer.close(updateFrame);  //再改变当前层的标题
					});
					form.verify({
						//数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
					  	ZHCheck: [
						    /^[\u0391-\uFFE5]+$/
						    ,'只允许输入中文'
					  	] 
					});
					//拖拽上传
					upload.render({
						elem: '#goodsPic',
						url: '/upload/',
						done: function(res) {
						  	console.log(res)
						}
					});
				});
			</script>

		</div>
	</body>

</html>
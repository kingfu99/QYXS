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
        .layui-form{
            margin-right: 30%;
        }
    </style>

</head>

<body>
<div class="cBody">
    <form id="addForm" class="layui-form" action="/category/fabu" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">商品名称</label>
            <div class="layui-input-block">
                <input type="text" name="cname" required lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <input  class="layui-btn" type="submit" value="立即提交">
                <input class="layui-btn layui-btn-primary" type="reset" value="重置">
            </div>
        </div>
    </form>


    <script>
        layui.use(['upload','form'], function() {
            var form = layui.form;
            var upload = layui.upload;
            var layer = layui.layer;
            //监听提交
            form.on('submit(submitBut)', function(data) {
                return false;
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
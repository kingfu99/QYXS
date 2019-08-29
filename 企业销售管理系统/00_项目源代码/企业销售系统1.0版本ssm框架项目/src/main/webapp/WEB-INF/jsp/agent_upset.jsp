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


    <form id="upsetForm" class="layui-form" method=post action="/customer/update" enctype="multipart/form-data" >
        <input type="hidden" value="${customer.cusId}" name="identity">
    <%--    <div class="layui-form-item">
            <label class="layui-form-label">ID</label>
            <div class="layui-input-inline shortInput">
                <input type="text" name="identity" value="${customer.cusId}" autocomplete="off" class="layui-input">
            </div>
        </div>--%>
        <div class="layui-form-item">
            <label class="layui-form-label">公司名称</label>
            <div class="layui-input-inline shortInput">
                <input type="text" name="title" required lay-verify="required|ZHCheck" value="${customer.cusName}" autocomplete="off" class="layui-input">
            </div>
            <i class="iconfont icon-huaban bt"></i>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">地区</label>
            <div class="layui-input-inline">
                <select name="provid" id="provid" value="${customer.cusAdd1}" lay-filter="provid">
                    <option value="">请选择省</option>
                </select>
            </div>
            <div class="layui-input-inline">
                <select name="cityid" id="cityid" value="${customer.cusAdd2}" lay-filter="cityid">
                    <option value="">请选择市</option>
                </select>
            </div>
        </div>
    <div class="layui-form-item">
            <label class="layui-form-label">负责人</label>
            <div class="layui-input-inline shortInput">
                <input type="text" name="realName" required lay-verify="required|ZHCheck" value="${customer.cusPo}"  autocomplete="off" class="layui-input">
            </div>
        </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">电话</label>
            <div class="layui-input-inline shortInput">
                <input type="text" name="phone" required lay-verify="required|phone" value="${customer.cusTel}"  autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">邮箱</label>
            <div class="layui-input-inline shortInput">
                <input type="text" name="email" value="${customer.cusEmail}"  autocomplete="off" class="layui-input">
            </div>
        </div>
     <%--  <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注</label>
            <div class="layui-input-block">
                <textarea name="desc" value="${customer.cusBz}"  class="layui-textarea"></textarea>
            </div>
        </div>--%>
       <%-- <div class="layui-form-item">
            <label class="layui-form-label">是否开通</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="nan" title="启用" checked>
                <input type="radio" name="sex" value="nv" title="禁用">
            </div>
        </div>--%>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="submitBut" >修改</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <!-- 三级省市 插件 -->
    <script src="../../framework/area.js"></script>
    <script src="../../framework/province.js"></script>
<script>
layui.use(['jquery','form'], function(){
        var $ = layui.jquery
          form = layui.form;

            
            form.on('submit(submitBut)',function(data){
                console.log(area.field);
                console.log( "省"+ $("#provid option:selected").text())
                console.log( "市"+ $("#cityid option:selected").text())
                return false;
            })

})
</script>


</div>
</body>

</html>
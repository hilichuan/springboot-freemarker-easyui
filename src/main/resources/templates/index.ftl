<!DOCTYPE html>
<html>
<head>
    <title>主页</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>
<div>
    <button id="but" style="margin:15px 15px 15px 15px" onclick="add()">新增商品</button>
    <input type="text" name="" id="" placeholder=" 商品名称" style="width:250px" class="input-text">
    <button name="" id="" type="submit">搜索商品</button>
</div>
<div id="wrapper" class="toggled">

<#--主要内容content-->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-bordered table-condensed">
                        <thead>
                        <tr>
                            <th>商品id</th>
                            <th>名称</th>
                            <th>类目</th>
                            <th>单价</th>
                            <th>库存</th>
                            <th>描述</th>
                            <th>创建时间</th>
                            <th>修改时间</th>
                            <th colspan="2">操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        <#list list as productInfo>
                        <tr>
                            <td>${productInfo.productId}</td>
                            <td>${productInfo.productName}</td>
                            <td>${productInfo.categoryId}</td>
                            <td>${productInfo.productPrice}</td>
                            <td>${productInfo.productStock}</td>
                            <td>${productInfo.productDescription}</td>
                            <td>${productInfo.createTime?string('yyyy-MM-dd hh:mm:ss')}</td>
                            <td>${productInfo.updateTime?string('yyyy-MM-dd hh:mm:ss')}</td>
                            <td><a href="/sell/seller/product/index?productId=${productInfo.productId}">修改</a></td>
                            <td><a href="/sell/seller/product/index?productId=${productInfo.productId}">删除</a></td>

                        </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

</div>

</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="XueFu.Website.Admin.Login" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>管理员登陆</title>
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="/css/login.css?v=1.2" rel="stylesheet">
</head>
<body>
    <nav class="nav-top navbar-fixed-top">
        <div class="row text-center">
            <div class="col-xs-12" id="navTitle">
                管理员登陆
            </div>
        </div>
    </nav>
    <div class="clearfix" style=" height:80px;"></div>
    <div class="panel-body">
        <form>
            <div class="form-group" id="block-username" data-item="type-0">
                <label for="username" class="sr-only">用户名</label>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                    <input type="text" class="form-control" id="username" placeholder="用户名"  required="required">
                </div>
                <p id="error-username">&nbsp;</p>
            </div>
            <div class="form-group" id="block-password" data-item="type-0">
                <label for="password" class="sr-only">密码</label>
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon2"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
                    <input type="password" class="form-control" id="password" placeholder="登陆密码"  required="required">
                </div>
                <p id="error-password">&nbsp;</p>
            </div>
            <button id="loginbutton" type="button" class="btn btn-danger btn-lg btn-block">登陆</button>
        </form>
    </div>
    <script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/layer/layer.js"></script>
    <script type="text/javascript" src="/js/base.js"></script>
    <script type="text/javascript" src="/js/admin.js"></script>
</body>
</html>

<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:71:"F:\wamp64\www\1kbcms2\public/../application/admin\view\index\index.html";i:1501481692;}*/ ?>
﻿<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>后台模板</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/bootstrap.min.css?v=v3.3.7" media="all">
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/font/iconfont.css?v=1.0.0" media="all">
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/layui.css?v=1.0.9" media="all">
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/jqadmin.css?v=1.3.4" media="all">
</head>

<body>
<ul class='right-click-menu'>
    <li><a href='javascript:;' data-event='fresh'>刷新</a></li>
    <li><a href='javascript:;' data-event='close'>关闭</a></li>
    <li><a href='javascript:;' data-event='other'>关闭其它</a></li>
    <li><a href='javascript:;' data-event='all'>全部关闭</a></li>
</ul>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <!-- logo区域 -->
        <div class="jqadmin-logo-box">
            <a class="logo" href="__ROOT__/admin" title="jQAdmin"><img src="__ADMIN__/images/logo.png" alt=""></a>
            <div class="menu-type" data-type="2"><i class="iconfont">&#xe61a;</i></div>
        </div>

        <!-- 主菜单区域 -->
        <div class="jqadmin-main-menu">
            <ul class="layui-nav clearfix" id="menu" lay-filter="main-menu">

            </ul>

        </div>
        <!-- 头部右侧导航 -->
        <div class="header-right">

            <a class="layui-btn layui-btn-small ajax" data-params='{"url": "<?php echo url("admin/Admin/delcache"); ?>","confirm":"true","data":"","complete":"delcache"}' style="position: absolute; top: 14px; right:180px;"> <i class="iconfont">&#xe60c;</i> 清理缓存</a>

            <ul class="layui-nav jqadmin-header-item right-menu">
                <li class="layui-nav-item first">
                    <a href="javascript:;">
                        <cite> <?php echo $loginUserInfo['username']; ?></cite>
                        <span class="layui-nav-more"></span>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a class="ajax" style="cursor: p" data-params='{"url": "<?php echo url("admin/Login/logout"); ?>","confirm":"false","data":"","complete":"logout"}'><i class="iconfont ">&#xe64b; </i>退出</a>
                        </dd>
                    </dl>
                </li>
            </ul>
            <button title="刷新" class="layui-btn layui-btn-normal fresh-btn"><i class="iconfont">&#xe62e; </i> </button>
        </div>
    </div>

    <!-- 左侧导航-->
    <div class="layui-side layui-bg-black jqamdin-left-bar">
        <div class="layui-side-scroll">
            <!--子菜单项-->
            <p class="jqadmin-home tab-menu">
                <a href="javascript:;" data-url="welcome.html" data-title="后台首页">
                    <i class="iconfont" data-icon='&#xe600;'>&#xe600;</i>
                    <span>后台首页</span>
                </a>
            </p>
            <div id="submenu"></div>
        </div>
    </div>

    <!-- 左侧侧边导航结束 -->
    <!-- 右侧主体内容 -->
    <div class="layui-body jqadmin-body">

        <div class="layui-tab layui-tab-card jqadmin-tab-box" id="jqadmin-tab" lay-filter="tabmenu" lay-notAuto="true">
            <ul class="layui-tab-title">
                <li class="layui-this" id="admin-home" lay-id="0" fresh=1><i class="iconfont">&#xe600;</i><em>后台首页</em></li>

            </ul>
            <div class="menu-btn" title="显示左则菜单">
                <i class="iconfont">&#xe616;</i>
            </div>
            <div class="tab-move-btn">
                <span>更多<i class="iconfont">&#xe604;</i></span>

                <!--<span class="move-left-btn"><i class="iconfont">&#xe616;</i></span>
                <span class="move-right-btn"><i class="iconfont ">&#xe618;</i></span>-->
            </div>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe class="jqadmin-iframe" name="yk_iframe" id="yk_iframe" data-id='0' src="<?php echo url('home'); ?>"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部区域 -->
    <div class="layui-footer jqadmin-foot">
        <div class="layui-mian">
            <p class="jqadmin-copyright">
                <span class="layui">2017 &copy;</span> Write by hongkai.wang,<a href="http://www.yikaiba.com">壹凯巴</a>. 版权所有 <span class="layui">依赖前端框架layui</span>
            </p>
        </div>
    </div>
</div>
<div class="my-tip">
    <img src="__ADMIN__/images/my-tip.jpg" alt="" />
</div>
<ul class="menu-list" id="menu-list"></ul>
</body>
<script id="menu-tpl" type="text/html" data-params='{"url":"<?php echo url("api/api/index"); ?>","listid":"menu","icon":"true"}'>
    {{# layui.each(d.list, function(index, item){ }}
    <li class="layui-nav-item {{# if(index==0){ }}layui-this{{# } }}">
        <a href="javascript:;" data-title="{{item.name}}"><i class="iconfont">{{item.iconfont}}</i><span>{{item.name}}</span></a>
    </li>
    {{# }); }}
</script>

<script id="submenu-tpl" type="text/html">
    {{# layui.each(d.list, function(index, menu){ }}
    <div class="sub-menu">
        <ul class="layui-nav layui-nav-tree">
            {{# layui.each(menu.sub, function(index, submenu){ }} {{# if(submenu.sub && submenu.sub.length>0){ }}
            <li class="layui-nav-item" data-bind="0">
                <a href="javascript:;" data-title="{{submenu.name}}">
                    <i class="iconfont">{{submenu.iconfont}}</i>
                    <span>{{submenu.name}}</span>
                    <em class="layui-nav-more"></em>
                </a>
                <dl class="layui-nav-child">
                    {{# layui.each(submenu.sub, function(index, secMenu){ }}
                    <dd>
                        <a href="javascript:;" data-url="{{secMenu.url}}" data-title="{{secMenu.name}}">
                            <i class="iconfont " data-icon='{{secMenu.iconfont}}'>{{secMenu.iconfont}}</i>
                            <span>{{secMenu.name}}</span>
                        </a>
                    </dd>
                    {{# }); }}
                </dl>
            </li>
            {{# }else{ }}
            <li class="layui-nav-item">
                <a href="javascript:;" data-url="{{submenu.url}}" data-title="{{submenu.name}}">
                    <i class="iconfont" data-icon='{{submenu.iconfont}}'>{{submenu.iconfont}}</i>
                    <span>{{submenu.name}}</span>
                </a>
            </li>
            {{# } }} {{# }); }}
        </ul>
    </div>
    {{# }); }}
</script>


<script id="menu-list-tpl" type="text/html">

    {{# layui.each(d.list, function(index, item){ }}
    <li>
        <a href="javascript:;" data-url="{{item.href}}" data-title="{{item.title}}">
            <i class="iconfont " data-icon='{{item.icon}}'>{{item.icon}}</i>
            <span>{{item.title}}</span>
        </a>
    </li>
    {{# }); }}

</script>
<script type="text/javascript" src="__ADMIN__/js/layui/layui.js"></script>
<script>
    layui.config({
        base: '__ADMIN__/js/',
    }).extend({
        elem: 'jqmodules/elem',
        tabmenu: 'jqmodules/tabmenu',
        jqmenu: 'jqmodules/jqmenu',
        ajax: 'jqmodules/ajax',
        dtable: 'jqmodules/dtable',
        jqdate: 'jqmodules/jqdate',
        modal: 'jqmodules/modal',
        tags: 'jqmodules/tags',
        jqform: 'jqmodules/jqform',
        echarts: 'lib/echarts',
        webuploader: 'lib/webuploader'
    })
</script>
<script>
    layui.use('index');
</script>

</html>
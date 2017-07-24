<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:70:"D:\wamp64\www\1kbcms2\public/../application/admin\view\index\home.html";i:1500899445;}*/ ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>jQadmin后台模板</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/bootstrap.min.css?v=v3.3.7" media="all">
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/font/iconfont.css?v=1.0.0" media="all">
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/layui.css?v=1.0.9" media="all">
    <link rel="stylesheet" type="text/css" href="__ADMIN__/css/main.css?v1.3.4" media="all">

</head>

<body>
<div class="container-fluid larry-wrapper">
    <!--顶部统计数据预览 -->
    <div class="row">
        <div class="col-xs-6 col-sm-4 col-md-2">
            <section class="panel">
                <div class="symbol bgcolor-blue"> <i class="iconfont">&#xe672;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="用户总量"><i class="iconfont " data-icon='&#xe672;'></i>
                        <h1>10</h1>
                    </a>

                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="用户总量"> <i class="iconfont " data-icon='&#xe672;'></i><span>用户总量</span></a>

                </div>
            </section>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
            <section class="panel">
                <div class="symbol bgcolor-commred"> <i class="iconfont">&#xe674;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日注册"> <i class="iconfont " data-icon='&#xe674;'></i>
                        <h1>10</h1>
                    </a>

                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日注册"> <i class="iconfont " data-icon='&#xe674;'></i><span>今日注册</span></a>

                </div>
            </section>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-2">
            <section class="panel">
                <div class="symbol bgcolor-dark-green"> <i class="iconfont">&#xe6bc;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="文章总数"> <i class="iconfont " data-icon='&#xe6bc;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="文章总数"> <i class="iconfont " data-icon='&#xe6bc;'></i><span>文章总数</span></a>
                </div>
            </section>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-2">
            <section class="panel">
                <div class="symbol bgcolor-yellow-green"> <i class="iconfont">&#xe649;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日新增"> <i class="iconfont " data-icon='&#xe649;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日新增"> <i class="iconfont " data-icon='&#xe649;'></i><span>今日新增</span></a>
                </div>
            </section>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-2">
            <section class="panel">
                <div class="symbol bgcolor-orange"> <i class="iconfont">&#xe638;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="评论总数"> <i class="iconfont " data-icon='&#xe638;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="评论总数"> <i class="iconfont " data-icon='&#xe638;'></i><span>评论总数</span></a>
                </div>
            </section>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-2">
            <section class="panel">
                <div class="symbol bgcolor-yellow"> <i class="iconfont">&#xe669;</i>
                </div>
                <div class="value tab-menu">
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日评论"> <i class="iconfont " data-icon='&#xe669;'></i>
                        <h1>10</h1>
                    </a>
                    <a href="javascript:;" data-url="user-info.html" data-parent="true" data-title="今日评论"> <i class="iconfont " data-icon='&#xe669;'></i><span>今日评论</span></a>
                </div>
            </section>
        </div>

    </div>

    <div class="row">
        <div class="col-xs-12 col-md-6">
            <section class="panel">
                <div class="panel-heading">
                    网站信息
                    <a href="javascript:;" class="pull-right panel-toggle"><i class="iconfont">&#xe604;</i></a>
                </div>
                <div class="panel-body">
                    <table class="layui-table">
                        <tbody>
                        <tr>
                            <td>
                                <strong>软件名称</strong>：

                            </td>
                            <td>
                                <a href="">壹凯巴后台模板</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>软件版本</strong>：

                            </td>
                            <td>
                                V1.3.4r1
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>开发作者</strong>：

                            </td>
                            <td>Paco</td>
                        </tr>
                        <tr>
                            <td>
                                <strong>软件官网</strong>：
                            </td>
                            <td>
                                <a href="" target="_blank">壹凯巴</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>模板下载</strong>：
                            </td>
                            <td><a href="" target="_blank" class="layui-btn layui-btn-small">码云下载</a>
                                <a href="" class="layui-btn layui-btn-small">本地下载</a>
                                <a href="" class="layui-btn layui-btn-small">本地下载无ssi版</a>
                                <a href="" target="_blank" class="layui-btn layui-btn-small layui-btn-danger">我要点赞</a></td>
                        </tr>
                        <tr>
                            <td>
                                <strong>QQ讨论群</strong>：
                            </td>
                            <td>
                                <a target="_blank" href=""><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="jQ酷" title="jQ酷"></a> 入群答案：壹凯巴</td>
                        </tr>
                        <tr>
                            <td>
                                <strong>服务器环境</strong>：
                            </td>
                            <td>windows</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </section>
            <section class="panel log">
                <div class="panel-heading">
                    更新日志
                    <a href="javascript:;" class="pull-right panel-toggle"><i class="iconfont">&#xe604;</i></a>
                </div>
                <div class="panel-body">

                    <h2>壹凯巴后台模板v1.3.4r2 2017-05-09</h2>
                    <ul>
                        <li> 修复弹窗过高，挣出屏幕BUG</li>
                    </ul>

                    <h2>壹凯巴后台模板v1.3.4r1 2017-05-08</h2>
                    <ul>
                        <li> 修复火狐刷新打开菜单列表出错BUG</li>
                    </ul>

                    <h2>壹凯巴后台模板v1.3.4r 2017-05-05</h2>
                    <ul>
                        <li> 修复列表编辑时异步没有提交值错误</li>
                        <li> 添加打开页面时加载动画效果</li>
                    </ul>

                    <h2>壹凯巴后台模板v1.3.4</h2>
                    <ul>
                        <li> 修复列表页搜索时分页不跳转到第一页的BUG</li>
                        <li> 添加表格按字段排序功能</li>
                        <li> 添加表格编辑框</li>
                        <li> 添加ajax回调时是否关闭回调参数</li>
                        <li> 添加弹窗标题自定义</li>
                        <li> 添加异步后是否刷新列表参数，列表刷新不支持iframe模式</li>
                        <li> 改进表单数据填充方式</li>
                        <li> 添加刷新后重新打开原来打开的窗口</li>
                        <li> 添加打开窗口列表，便于快捷切换</li>
                        <li> 所有ajax请求改为请求json数据</li>
                        <li> 修正弹窗后表单不重置错误</li>
                    </ul>
                    <h2>壹凯巴后台模板v1.3.3 2017-03-22 </h2>
                    <ul>
                        <li> 修复表单提交关闭不了窗口的BUG</li>
                        <li> 修正菜单选项卡不能关闭BUG</li>
                        <li> 修正菜单右键弹出菜单bug</li>
                        <li> 修复首页的统计链接</li>
                        <li> 添加看云使用手册</li>
                    </ul>
                    <p>更多帮助文档请移步到 <a href="http://www.kancloud.cn/jqcool/壹凯巴" target="_blank" class="layui-btn layui-btn-small">使用手册</a></p>
                </div>
            </section>
        </div>


        <div class="col-xs-12 col-md-6">



            <section class="panel">
                <div class="panel-heading">
                    最新文章
                    <a href="javascript:;" class="pull-right panel-toggle"><i class="iconfont">&#xe604;</i></a>
                </div>
                <div class="panel-body">
                    <table class="layui-table" lay-even>
                        <colgroup>
                            <col>
                            <col width="100">
                            <col width="120">
                            <col width="80">
                            <col width="150">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>标题</th>
                            <th>作者</th>
                            <th>时间</th>
                            <th>审核</th>
                            <th>操作</th>

                        </tr>
                        </thead>
                        <tbody class="layui-form">
                        <tr>
                            <td>人生就像是一场修行</td>
                            <td>Paco</td>
                            <td>2016-11-29</td>
                            <td>
                                <input type="checkbox" name="close" lay-text="ON|OFF" lay-skin="switch" lay-filter="ajax" data-params='{"url":"/php/success.php","loading":"false"}'>
                            </td>

                            <td>
                                <button class="layui-btn layui-btn-mini modal-full" data-params='{"content":"add-article.html","title":"编辑文章"}'>
                                    <i class="iconfont">&#xe653;</i>编辑
                                </button>
                                <button class="layui-btn layui-btn-mini layui-btn-danger ajax" data-params='{"url":"/php/test.php","data":"id=1&name=jqcool"}'>
                                    <i class="iconfont">&#xe626;</i>删除
                                </button></td>
                        </tr>
                        <tr>
                            <td>人生就像是一场修行</td>
                            <td>Paco</td>
                            <td>2016-11-29</td>
                            <td>
                                <input type="checkbox" name="close" lay-skin="switch">
                            </td>
                            <td>
                                <button class="layui-btn layui-btn-mini modal-catch" data-params='{"content":".testcatch","title":"编辑人生就像是一场修行","type":"1"}'>
                                    <i class="iconfont">&#xe653;</i>编辑
                                </button>
                                <button class="layui-btn layui-btn-mini layui-btn-danger">
                                    <i class="iconfont">&#xe626;</i>删除
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </section>
            <section class="panel">
                <div class="panel-heading">
                    数据统计
                    <a href="javascript:;" class="pull-right panel-toggle"><i class="iconfont">&#xe604;</i></a>
                </div>
                <div class="panel-body">
                    <div class="echarts" id="echarts"></div>
                </div>
            </section>

        </div>
    </div>

</div>

<div class="testcatch" style="display: none;">
    <p>这是一个捕获弹窗</p>
</div>
</body>
<script type="text/javascript" src="__ADMIN__/js/layui/layui.js"></script>
<script>
    layui.config({
        base: '__ADMIN__/js/',
        version: "1.3.4r2"
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
    layui.use(['main', 'echart']);
</script>

</html>
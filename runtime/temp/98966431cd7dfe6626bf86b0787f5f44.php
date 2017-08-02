<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:72:"F:\wamp64\www\1kbcms2\public/../application/admin\view\setting\site.html";i:1501231335;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1501480671;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1501032406;}*/ ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>后台管理系统</title>
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
    <!--加载king编辑器开始-->
    <script src="__PLUG__/kingeditor/kindeditor-all.js"></script>
    <!--加载king编辑器结束-->
    
    <!--头部描述信息开始<div class="container-fluid am-cf">-->
    
    <!--头部描述信息结束-->

</head>


<body>
<div class="container-fluid larry-wrapper">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <!--列表-->
            <section class="panel panel-padding" style="height:40px;margin-bottom:4px">
                <div class="group-button">
                    <?php if(!(empty($infoModule['menu']) || (($infoModule['menu'] instanceof \think\Collection || $infoModule['menu'] instanceof \think\Paginator ) && $infoModule['menu']->isEmpty()))): if(is_array($infoModule['menu']) || $infoModule['menu'] instanceof \think\Collection || $infoModule['menu'] instanceof \think\Paginator): if( count($infoModule['menu'])==0 ) : echo "" ;else: foreach($infoModule['menu'] as $key=>$vo): ?>
                    <a href="<?php echo $vo['url']; ?>" class="layui-btn layui-btn-small modal-catch"><?php echo $vo['name']; ?></a>
                    <?php endforeach; endif; else: echo "" ;endif; endif; if(!(empty($infoModule['_info']['1']) || (($infoModule['_info']['1'] instanceof \think\Collection || $infoModule['_info']['1'] instanceof \think\Paginator ) && $infoModule['_info']['1']->isEmpty()))): if(is_array($infoModule['_info']) || $infoModule['_info'] instanceof \think\Collection || $infoModule['_info'] instanceof \think\Paginator): if( count($infoModule['_info'])==0 ) : echo "" ;else: foreach($infoModule['_info'] as $key=>$vo): ?>
                        <a href="<?php echo $vo['url']; ?>" class="layui-btn layui-btn-small modal-catch" style="float:right;">
                            <?php echo $vo['name']; ?>
                        </a>
                        <?php endforeach; endif; else: echo "" ;endif; else: if(!(empty($infoModule['_info']['0']) || (($infoModule['_info']['0'] instanceof \think\Collection || $infoModule['_info']['0'] instanceof \think\Paginator ) && $infoModule['_info']['0']->isEmpty()))): ?>
                        <a href="<?php echo $infoModule['_info'][0]['url']; ?>" target="<?php echo (isset($infoModule['_info'][0]['target']) && ($infoModule['_info'][0]['target'] !== '')?$infoModule['_info'][0]['target']:''); ?>" class="layui-btn layui-btn-small modal-catch" style="float:right">
                            <?php echo $infoModule['_info'][0]['name']; ?>
                        </a>
                        <?php endif; endif; ?>
                </div>
            </section>
        </div>
    </div>
</div>
<div class="container-fluid larry-wrapper">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <section class="panel panel-padding">
                <form id="form1" class="layui-form layui-form-pane" action="<?php echo url(''); ?>">

                    <div class="layui-form-item">
                        <label class="layui-form-label">站点标题</label>
                        <div class="layui-input-block">
                            <input type="text" name="site_title" value="<?php echo (isset($info['site_title']) && ($info['site_title'] !== '')?$info['site_title']:''); ?>" jq-verify="" jq-error=" 请输入站点标题" placeholder="请输入站点标题" class="layui-input ">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">站点副标题</label>
                        <div class="layui-input-block">
                            <input type="text" name="site_subtitle" value="<?php echo (isset($info['site_subtitle']) && ($info['site_subtitle'] !== '')?$info['site_subtitle']:''); ?>" jq-verify="" jq-error=" 请输入站点副标题" placeholder="请输入站点标题" class="layui-input ">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">站点关键词</label>
                        <div class="layui-input-block">
                            <input type="text" name="site_keywords" value="<?php echo (isset($info['site_keywords']) && ($info['site_keywords'] !== '')?$info['site_keywords']:''); ?>" jq-verify="" jq-error=" 请输入站点关键词" placeholder="请输入站点标题" class="layui-input ">
                        </div>
                    </div>
                    <div class="layui-form-item ">
                        <label class="layui-form-label">站点描述</label>
                        <div class="layui-input-block">
                            <textarea name="site_description" placeholder="请输入站点描述" class="layui-textarea"><?php echo (isset($info['site_description']) && ($info['site_description'] !== '')?$info['site_description']:''); ?></textarea>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">站点网址</label>
                        <div class="layui-input-block">
                            <input type="text" name="site_url" value="<?php echo (isset($info['site_url']) && ($info['site_url'] !== '')?$info['site_url']:''); ?>" jq-verify="" jq-error=" 请输入站点网址" placeholder="请输入站点标题" class="layui-input ">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">站长邮箱</label>
                        <div class="layui-input-block">
                            <input type="text" name="site_email" value="<?php echo (isset($info['site_email']) && ($info['site_email'] !== '')?$info['site_email']:''); ?>" jq-verify="" jq-error=" 请输入站长邮箱" placeholder="请输入站点标题" class="layui-input ">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">站点版权</label>
                        <div class="layui-input-block">
                            <input type="text" name="site_copyright" value="<?php echo (isset($info['site_copyright']) && ($info['site_copyright'] !== '')?$info['site_copyright']:''); ?>" jq-verify="" jq-error=" 请输入站点版权" placeholder="请输入站点标题" class="layui-input ">
                        </div>
                    </div>

                    <div class="layui-form-item ">
                        <label class="layui-form-label">站点统计</label>
                        <div class="layui-input-block">
                            <textarea name="site_statistics" placeholder="请输入站点统计" class="layui-textarea"><?php echo (isset($info['site_statistics']) && ($info['site_statistics'] !== '')?$info['site_statistics']:''); ?></textarea>
                        </div>
                    </div>

                    <div class="layui-input-block">
                        <button class="layui-btn" jq-submit lay-filter="submit" jq-tab="true">立即提交</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
</body>

<script src="__ADMIN__/js/layui/layui.js"></script>
<script>
    layui.config({
        base: '__ADMIN__/js/',
        version: "1.3.4r"
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
<!--脚本文件开始-->

<script>
    layui.use('pageform');
</script>

<!--脚本文件结束-->
</html>
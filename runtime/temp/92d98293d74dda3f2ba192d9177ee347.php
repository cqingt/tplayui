<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:79:"F:\wamp64\www\1kbcms2\public/../application/kbcms\view\admin_fragment\info.html";i:1501472826;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1501480671;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1501032406;}*/ ?>
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
                        <label class="layui-form-label">碎片名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" value="<?php echo (isset($info['name']) && ($info['name'] !== '')?$info['name']:''); ?>" required jq-verify="required" jq-error="请输入碎片名称" placeholder="请输入碎片名称" class="layui-input ">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">碎片标识</label>
                        <div class="layui-input-block">
                            <input type="text" name="label" value="<?php echo (isset($info['label']) && ($info['label'] !== '')?$info['label']:''); ?>" jq-verify="required|label" jq-error="请输入碎片标识|不能含有汉字" placeholder="请输入碎片标识" class="layui-input ">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">碎片内容</label>
                        <div class="layui-input-block">
                            <textarea name="content" class="king_content" cols="100" rows="20"><?php echo (isset($info['content']) && ($info['content'] !== '')?$info['content']:''); ?></textarea>
                        </div>
                    </div>
                    <div class="layui-input-block">
                        <input type="hidden" name="fragment_id" value="<?php echo (isset($info['fragment_id']) && ($info['fragment_id'] !== '')?$info['fragment_id']:''); ?>">
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

<!--kingeditor编辑器开始-->
<script>
    //document.domain = 'domain.com';
    KindEditor.ready(function(K) {
        window.editor = K.create('.king_content', {
            allowFileManager : true,
            langType : 'zh-CN',
            autoHeightMode : true,
            afterBlur: function () { this.sync(); },
        });
    });
</script>
<!--kingeditor编辑器结束-->
<script>
    layui.use('myform', function(){
        var $ = layui.jquery,
                form = layui.jqform;
        //各种基于事件的操作，下面会有进一步介绍
        //自定义
        form.verify({
            label:function (value) {
                if (value==''){
                    return '碎片标识不能为空';
                }
                if(/.*[\u4e00-\u9fa5]+.*$/.test(value)){
                    return '碎片标识不能含有汉字！';
                }
            }
        });
    });
</script>

<!--脚本文件结束-->
</html>
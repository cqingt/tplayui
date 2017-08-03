<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:75:"F:\wamp64\www\1kbcms2\public/../application/admin\view\admin_menu\info.html";i:1501752795;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1501480671;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1501032406;}*/ ?>
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
    
<link rel="stylesheet" type="text/css" href="__ADMIN__/css/font/demo.css">

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
                        <label class="layui-form-label">菜单组</label>
                        <div class="layui-input-inline">
                            <select class="tpl-form-input" jq-verify="required" jq-error="请选择用户组" lay-filter="pid" name="pid">
                                <option value="0">顶级菜单</option>
                                <?php if(is_array($menuList) || $menuList instanceof \think\Collection || $menuList instanceof \think\Paginator): if( count($menuList)==0 ) : echo "" ;else: foreach($menuList as $key=>$vo): ?>
                                <option value="<?php echo $vo['id']; ?>" <?php if($vo['id'] == $info['pid']): ?>selected<?php endif; ?>><?php echo $vo['cname']; ?></option>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                            </select>
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">菜单名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" value="<?php echo (isset($info['name']) && ($info['name'] !== '')?$info['name']:''); ?>" jq-verify="required" jq-error=" 请输入菜单名" placeholder="请输入菜单名" class="layui-input ">
                        </div>
                    </div>
                    <?php if($info['rs'] != '2'): ?>
                    <div class="layui-form-item">
                        <label class="layui-form-label">地址url</label>
                        <div class="layui-input-block">
                            <input type="text" name="url" value="<?php echo (isset($info['url']) && ($info['url'] !== '')?$info['url']:''); ?>" jq-verify="required" jq-error="请输入地址url" placeholder="请输入地址url" class="layui-input ">
                        </div>
                    </div>
                    <?php endif; ?>
                    <!--<div class="layui-form-item icon_lists clear">
                        <label class="layui-form-label">图标</label>
                        <div class="layui-input-inline" style="text-align:center;">
                            <i class="icon iconfont"><?php echo $info['iconfont']; ?></i>
                        </div>

                        <div class="layui-input-inline">
                            <button type="button" class="layui-btn layui-btn-small modal" data-params='{";content";:";.add-subcat";,";area";:";600px,430px";,";title";:";添加分类";,";action";:";add";}' bind="1">
                                <i class="iconfont"></i> 选择图标
                            </button>
                        </div>
                    </div>-->
                    <div class="layui-form-item" pane>
                        <label class="layui-form-label">选择图标</label>
                        <div class="layui-input-block" >
                            <?php if(is_array($iconFont) || $iconFont instanceof \think\Collection || $iconFont instanceof \think\Paginator): if( count($iconFont)==0 ) : echo "" ;else: foreach($iconFont as $key=>$vo): ?>
                            <input type="radio" name="iconfont" <?php if($info['iconfont'] == $vo['code']): ?>checked<?php endif; ?> title='<i class="iconfont">&<?php echo $vo['code']; ?></i>' value="<?php echo $vo['code']; ?>"/>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </div>
                    </div>

                    <div class="layui-form-item" pane>
                        <label class="layui-form-label">状态</label>
                        <div class="layui-input-inline">
                            <input type="radio" name="status" <?php if($info['status'] == '1'): ?>checked<?php endif; ?> title="正常" value="1" checked />
                            <input type="radio" name="status" <?php if($info['status'] == '2'): ?>checked<?php endif; ?> title="禁用" value="2" />
                        </div>
                    </div>
                    <div class="layui-input-block">
                        <input type="hidden" name="id" type="hidden" value="<?php echo (isset($info['id']) && ($info['id'] !== '')?$info['id']:''); ?>">
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
    layui.use('myform', function(){
        var form = layui.form();
        var $= layui.jquery;
        /*window.onload=function(){
            url="<?php echo url('checkUrl'); ?>";
            $.post(url,{
                id:'<?php echo $info['id']; ?>',
            },function(data){
                if (data==1){
                    $('#menu_url').show();
                }else{
                    $('#menu_url').hide();
                }
            });
        }*/
        form.on('select(pid)', function(data){
            url="<?php echo url('checkUrl'); ?>";
            $.post(url,{
                id:data.value
            },function(data){
                if (data==1){
                    $('#menu_url').show();
                }else{
                    $('#menu_url').hide();
                }

                /*if (data==1)else*/
            });
            //alert(data.value);
        });
    });
</script>

<!--脚本文件结束-->
</html>
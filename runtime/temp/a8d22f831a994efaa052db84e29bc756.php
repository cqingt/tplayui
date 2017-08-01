<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:80:"F:\wamp64\www\1kbcms2\public/../application/kbcms\view\admin_category\index.html";i:1500625895;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1501480671;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1501032406;}*/ ?>
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
<div class="layui-form">
    <table class="layui-table lay-even">
        <thead>
        <tr>
            <th width="80">ID</th>
            <th>名称</th>
            <th width="180">类型</th>
            <th width="80">排序</th>
            <th width="80">状态</th>
            <th width="240">操作</th>
        </tr>
        </thead>
        <tbody>
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): if( count($list)==0 ) : echo "" ;else: foreach($list as $key=>$vo): ?>
        <tr>
            <td><?php echo $vo['class_id']; ?></td>
            <td><?php echo $vo['cname']; ?></td>
            <td><?php echo $vo['model_name']; if($vo['model_name'] == '文章'): ?>（<?php echo $type[$vo['type']]; ?>）<?php endif; ?></td>
            <td><input type="text" class="layui-input ajax-blur" name="field_value" value="<?php echo $vo['sequence']; ?>" data-params='{"url":"<?php echo url("api/api/upField"); ?>","data":"table=category&id_name=class_id&id_value=<?php echo $vo['class_id']; ?>&field=sequence","loading":"false","complete":"up"}'> </td>
            <td class="layui-form">
                <input type="checkbox" name="field_value" lay-skin="switch" value="1" lay-text="显示|关闭" <?php if($vo['show'] == '1'): ?>checked<?php endif; ?>  lay-filter="ajax" data-params='{"url":"<?php echo url("api/api/upField"); ?>","confirm":"true","data":"table=category&id_name=class_id&id_value=<?php echo $vo['class_id']; ?>&field=show","complete":"up"}'></td>
            <td>
                <a href="<?php echo url($vo['app'].'/AdminCategory/info',array('id'=>$vo['class_id'])); ?>" class="layui-btn layui-btn-mini modal-catch">
                    <i class="iconfont">&#xe653;</i>编辑
                </a>
                <a class="layui-btn layui-btn-mini layui-btn-danger ajax"
                   data-list='{"key":"id=<?php echo $vo['class_id']; ?>","msg":true,"render":"true","action":"del"}'
                   data-params='{"url": "<?php echo url($vo['app']."/AdminCategory/del"); ?>","confirm":"true","data":"id=<?php echo $vo['class_id']; ?>","complete":"del"}'>
                    <i class="iconfont">&#xe626;</i>删除
                </a>

            </td>
        </tr>
        <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
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
    layui.use('default');
</script>

<!--脚本文件结束-->
</html>
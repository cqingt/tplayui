<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:84:"F:\wamp64\www\1kbcms2\public/../application/admin\view\admin_user_group\purview.html";i:1501221991;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1501480671;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1501032406;}*/ ?>
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

                    <?php if(is_array($AdminMenu) || $AdminMenu instanceof \think\Collection || $AdminMenu instanceof \think\Paginator): if( count($AdminMenu)==0 ) : echo "" ;else: foreach($AdminMenu as $key=>$vo): ?>
                    <div class="layui-form-item">
                        <label class="layui-form-label"><?php echo $vo['name']; ?></label>
                        <div class="layui-input-block">
                            <input type="checkbox" lay-filter="checkbox" <?php if(in_array(($vo['id']), is_array($menu_purview)?$menu_purview:explode(',',$menu_purview))): ?>checked<?php endif; ?> value="<?php echo $vo['id']; ?>" class="checkAll" name="menu_purview[<?php echo $vo['id']; ?>]" title="全部">
                            <?php if(is_array($vo['sub']) || $vo['sub'] instanceof \think\Collection || $vo['sub'] instanceof \think\Paginator): if( count($vo['sub'])==0 ) : echo "" ;else: foreach($vo['sub'] as $k=>$v): ?>
                            <input type="checkbox" value="<?php echo $v['id']; ?>" <?php if(in_array(($v['id']), is_array($menu_purview)?$menu_purview:explode(',',$menu_purview))): ?>checked<?php endif; ?> name="menu_purview[<?php echo $v['id']; ?>]" title="<?php echo $v['name']; ?>">
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </div>
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    <div class="layui-input-block">
                        <input type="hidden" name="group_id" type="hidden" value="<?php echo $info['group_id']; ?>">
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
    /*$("#sel-all-info").click(function () {
        var _checked = $(this).prop('checked');
        $('.info-item').prop('checked', _checked);
    });*/
    layui.use('pageform', function(){
        var form = layui.form();
        var $= layui.jquery;

        //各种基于事件的操作，下面会有进一步介绍
        form.on('checkbox(checkbox)', function(data){
            var child = $(data.elem).parents('.layui-input-block').find('input[type="checkbox"]');
            child.each(function(index, item){
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
            /*if (data.elem.checked) {
                $(data.elem).parent().children('input').attr('checked',true)
                $(data.elem).parent().children('.layui-form-checkbox').addClass('layui-form-checked');
            } else {
                $(data.elem).parent().children('input').attr('checked',false)
                $(data.elem).parent().children('.layui-form-checkbox').removeClass('layui-form-checked');
            }*/
//            console.log(data.elem); //得到checkbox原始DOM对象
//            console.log(data.elem.checked); //是否被选中，true或者false
//            console.log(data.value); //复选框value值，也可以通过data.elem.value得到
//            console.log(data.othis); //得到美化后的DOM对象
        });
    });
</script>

<!--脚本文件结束-->
</html>
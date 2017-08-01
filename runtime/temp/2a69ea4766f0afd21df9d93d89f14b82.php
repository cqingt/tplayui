<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:81:"F:\wamp64\www\1kbcms2\public/../application/article\view\admin_content\index.html";i:1500622904;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1501480671;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1501032406;}*/ ?>
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
<!--头部搜索开始-->
<div class="container-fluid larry-wrapper">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <section class="panel panel-padding">
                <form class="layui-form" action="<?php echo url(''); ?>">
                    <div class="layui-form">
                        <div class="layui-inline">
                            <div class="layui-input-inline">
                                <input class="layui-input" name="keyword" value="<?php echo (isset($pageMaps['keyword']) && ($pageMaps['keyword'] !== '')?$pageMaps['keyword']:''); ?>" placeholder="关键字">
                            </div>
                        </div>
                        <div class="layui-inline">
                            <select name="class_id">
                                <option value="0">选择栏目</option>
                                <?php if(is_array($categoryList) || $categoryList instanceof \think\Collection || $categoryList instanceof \think\Paginator): if( count($categoryList)==0 ) : echo "" ;else: foreach($categoryList as $key=>$vo): ?>
                                <option value="<?php echo $vo['class_id']; ?>" <?php if($pageMaps['class_id'] == $vo['class_id']): ?> selected<?php endif; ?>><?php echo $vo['cname']; ?></option>
                                <?php endforeach; endif; else: echo "" ;endif; ?>nb
                            </select>
                        </div>
                        <div class="layui-inline">
                            <select name="position_id">
                                <option value="0">选择推荐位</option>
                                <?php if(is_array($positionList) || $positionList instanceof \think\Collection || $positionList instanceof \think\Paginator): if( count($positionList)==0 ) : echo "" ;else: foreach($positionList as $key=>$vo): ?>
                                <option value="<?php echo $vo['position_id']; ?>" <?php if($pageMaps['position_id'] == $vo['position_id']): ?> selected<?php endif; ?>><?php echo $vo['name']; ?></option>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                            </select>
                        </div>
                        <div class="layui-inline">
                            <select name="status">
                                <option value="0">选择状态</option>
                                <option value="1" <?php if($pageMaps['status'] == '1'): ?>selected<?php endif; ?>>显示</option>
                                <option value="2" <?php if($pageMaps['status'] == '2'): ?>selected<?php endif; ?>>关闭</option>
                            </select>
                        </div>
                        <div class="layui-inline">
                            <button lay-submit class="layui-btn" lay-filter="search">查找</button>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
<!--头部搜索结束-->
<div class="layui-form">
    <table class="layui-table lay-even">
        <thead>
        <tr>
            <th>ID</th>
            <th>标题</th>
            <th>栏目</th>
            <th>状态</th>
            <th>更新时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): if( count($list)==0 ) : echo "" ;else: foreach($list as $key=>$vo): ?>
        <tr>
            <td align="center"><span><?php echo $vo['content_id']; ?></span></td>
            <td><?php echo $vo['title']; ?></td>
            <td><?php echo $vo['class_name']; ?></td>
            <td><input type="checkbox" name="field_value" lay-skin="switch" value="1" lay-text="显示|关闭" <?php if($vo['status'] == '1'): ?>checked<?php endif; ?>  lay-filter="ajax" data-params='{"url":"<?php echo url("api/api/upField"); ?>","confirm":"true","data":"table=content&id_name=content_id&id_value=<?php echo $vo['content_id']; ?>&field=status","complete":"up"}'></td>
            <td><?php echo $vo['time']; ?></td>
            <td>
                <a href="<?php echo url('info',array('id'=>$vo['content_id'])); ?>" class="layui-btn layui-btn-mini modal-catch">
                    <i class="iconfont">&#xe653;</i>编辑
                </a>
                <a class="layui-btn layui-btn-mini layui-btn-danger ajax"
                   data-list='{"key":"id=<?php echo $vo['content_id']; ?>","msg":true,"render":"true","action":"del"}'
                   data-params='{"url": "<?php echo url("del"); ?>","confirm":"true","data":"id=<?php echo $vo['content_id']; ?>","complete":"del"}'>
                    <i class="iconfont">&#xe626;</i>删除
                </a>
            </td>
        </tr>
        <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
</div>
<div class="text-right">

    <div class="layui-box layui-laypage layui-laypage-molv" id="layui-laypage-1">
        <?php echo $_page; ?>
        <!--<a href="javascript:;" class="layui-laypage-prev">上一页</a>
        <a href="javascript:;" class="laypage_first" title="首页">首页</a><span>…</span>
        <a href="javascript:;">3</a>
        <a href="javascript:;">4</a>
        <span class="layui-laypage-curr">
            <em class="layui-laypage-em" style="background-color:#1E9FFF;"></em><em>5</em>
        </span>
        <a href="javascript:;">6</a>
        <a href="javascript:;">7</a><span>…</span>
        <a href="javascript:;" class="layui-laypage-last" title="尾页">末页</a>
        <a href="javascript:;" class="layui-laypage-next">下一页</a>-->
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
    layui.use('default');
</script>

<!--脚本文件结束-->
</html>
<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:78:"F:\wamp64\www\1kbcms2\public/../application/page\view\admin_category\info.html";i:1501231655;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1501480671;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1501032406;}*/ ?>
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
                    <div class="layui-tab" lay-filter="check">
                        <ul class="layui-tab-title">
                            <li class="layui-this" lay-id="1">基本信息</li>
                            <li lay-id="2">扩展信息</li>
                        </ul>
                        <div class="layui-tab-content">
                            <div class="layui-tab-item layui-show">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">上级栏目</label>
                                    <div class="layui-input-inline">
                                        <select name="parent_id" jq-verify="" jq-error="请输入分类" lay-filter="verify">
                                            <option value="0">顶级栏目</option>
                                            <?php if(is_array($categoryList) || $categoryList instanceof \think\Collection || $categoryList instanceof \think\Paginator): if( count($categoryList)==0 ) : echo "" ;else: foreach($categoryList as $key=>$vo): ?>
                                            <option value="<?php echo $vo['class_id']; ?>" <?php if($vo['class_id'] == $info['parent_id']): ?>selected<?php endif; ?>><?php echo $vo['cname']; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">页面名称</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="name" value="<?php echo (isset($info['name']) && ($info['name'] !== '')?$info['name']:''); ?>" jq-verify="required" jq-error="请输入页面名称" placeholder="请输入页面名称" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">形象图</label>
                                    <div class="layui-input-block">
                                        <input type="file" name="image" class="layui-upload-file">
                                        <input type="hidden" name="image" value="<?php echo (isset($info['image']) && ($info['image'] !== '')?$info['image']:''); ?>" jq-error="请上传形象图" error-id="img-error">
                                        <p id="img-error" class="error"></p>
                                    </div>
                                    <?php if(!(empty($info['image']) || (($info['image'] instanceof \think\Collection || $info['image'] instanceof \think\Paginator ) && $info['image']->isEmpty()))): ?>
                                    <div class="layui-input-block">
                                        <div class="imgbox"><img src="<?php echo (isset($info['image']) && ($info['image'] !== '')?$info['image']:''); ?>" alt="..." class="img-thumbnail"></div>
                                    </div>
                                    <?php endif; ?>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">页面内容</label>
                                    <div class="layui-input-block">
                                        <textarea name="content" class="king_content" cols="100" rows="20"><?php echo (isset($info['content']) && ($info['content'] !== '')?$info['content']:''); ?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">栏目关键词</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="keywords" value="<?php echo (isset($info['keywords']) && ($info['keywords'] !== '')?$info['keywords']:''); ?>" placeholder="请输入栏目关键词" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item ">
                                    <label class="layui-form-label">栏目描述</label>
                                    <div class="layui-input-block">
                                        <textarea name="description" placeholder="请输入栏目描述" class="layui-textarea"><?php echo (isset($info['description']) && ($info['description'] !== '')?$info['description']:''); ?></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">排序</label>
                                    <div class="layui-input-inline">
                                        <input type="text" name="sequence"  jq-verify="number" value="<?php echo (isset($info['sequence']) && ($info['sequence'] !== '')?$info['sequence']:'0'); ?>" jq-error="排序必须为数字" placeholder="分类排序" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">页面模板</label>
                                    <div class="layui-input-inline">
                                        <input type="text" name="class_tpl" id="class_tpl" value="<?php echo (isset($info['class_tpl']) && ($info['class_tpl'] !== '')?$info['class_tpl']:'page'); ?>"  class="layui-input ">
                                    </div>
                                    <div class="layui-input-inline">
                                        <select jq-error="请选择" lay-filter="class_tpl">
                                            <option value=""></option>
                                            <?php if(is_array($tplList) || $tplList instanceof \think\Collection || $tplList instanceof \think\Paginator): if( count($tplList)==0 ) : echo "" ;else: foreach($tplList as $key=>$vo): ?>
                                            <option value="<?php echo $vo['name']; ?>" <?php if($vo['name'] == $info['class_tpl']): ?>selected<?php endif; ?>><?php echo $vo['file']; ?></option>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item" pane>
                                    <label class="layui-form-label">页面状态</label>
                                    <div class="layui-input-inline">
                                        <input type="radio" name="show" <?php if($info['show'] == '1'): ?>checked<?php endif; ?> title="显示" value="1" checked />
                                        <input type="radio" name="show" <?php if($info['show'] == '2'): ?>checked<?php endif; ?> title="关闭" value="2" />
                                    </div>
                                </div>

                                <div class="layui-form-item layui-form-text">

                                    <div class="layui-input-block">
                                    </div>
                                </div>
                            </div>
                            <div class="layui-tab-item">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">子标题</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="subname" value="<?php echo (isset($info['subname']) && ($info['subname'] !== '')?$info['subname']:''); ?>" jq-error="请输入子标题" placeholder="请输入子标题" class="layui-input ">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">栏目url</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="urlname" value="<?php echo (isset($info['urlname']) && ($info['urlname'] !== '')?$info['urlname']:''); ?>" jq-error="请输入栏目url" placeholder="请输入栏目url" class="layui-input ">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <input type="hidden" name="class_id" value="<?php echo (isset($info['class_id']) && ($info['class_id'] !== '')?$info['class_id']:''); ?>">
                            <button class="layui-btn" jq-submit lay-filter="submit" jq-tab="true">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
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
        var form = layui.form();
        //各种基于事件的操作，下面会有进一步介绍
        form.on('select(class_tpl)', function(data){
            document.getElementById("class_tpl").value=data.value;
        });

    });

</script>

<!--脚本文件结束-->
</html>
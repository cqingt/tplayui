<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:81:"F:\wamp64\www\1kbcms2\public/../application/kbcms\view\admin_form_data\index.html";i:1483513770;s:79:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\base_content.html";i:1500353706;s:73:"F:\wamp64\www\1kbcms2\public/../application/admin\view\public\common.html";i:1500346786;}*/ ?>
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
    <!--加载king编辑器开始-->
    <script src="__PLUG__/kingeditor/kindeditor-all.js"></script>
    <!--加载king编辑器结束-->
    
    <!--头部描述信息开始<div class="container-fluid am-cf">-->
    
    <!--头部描述信息结束-->

</head>


<div class="row-content am-cf">
    <div class="row">
        <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
            <div class="widget am-cf">
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
                    <?php endforeach; endif; else: echo "" ;endif; else: ?>
                    <a href="<?php echo $infoModule['_info'][0]['url']; ?>" target="<?php echo (isset($infoModule['_info'][0]['target']) && ($infoModule['_info'][0]['target'] !== '')?$infoModule['_info'][0]['target']:''); ?>" class="layui-btn layui-btn-small modal-catch" style="float:right">
                        <?php echo $infoModule['_info'][0]['name']; ?>
                    </a>
                    <?php endif; ?>
                </div>
            </section>
        </div>
    </div>
</div>
                <div class="widget-body  am-fr">
                    <div class="am-u-sm-12">
                        <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                            <thead>
                            <tr>
                                <th class="table-id">ID</th>
                                <?php if(is_array($tableTh) || $tableTh instanceof \think\Collection || $tableTh instanceof \think\Paginator): if( count($tableTh)==0 ) : echo "" ;else: foreach($tableTh as $key=>$vo): ?>
                                <th><?php echo $vo; ?></th>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                <th width="120px" style="text-align:center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): if( count($list)==0 ) : echo "" ;else: foreach($list as $key=>$vo): ?>
                            <tr class="gradeX">
                                <td><?php echo $vo['data_id']; ?></td>
                                <?php if(is_array($fieldList) || $fieldList instanceof \think\Collection || $fieldList instanceof \think\Paginator): if( count($fieldList)==0 ) : echo "" ;else: foreach($fieldList as $key=>$val): if($val['show'] == '1'): ?>
                                <td><?php echo model('kbcms/FieldData')->showListField($vo[$val['field']],$val['type'],$val['config']); ?></td>
                                <?php endif; endforeach; endif; else: echo "" ;endif; ?>
                                <td>
                                    <div class="tpl-table-black-operation">
                                        <a href="<?php echo url('edit',array('data_id'=>$vo['data_id'],'fieldset_id'=>$formInfo['fieldset_id'])); ?>">
                                            <i class="am-icon-pencil"></i> 编辑
                                        </a>
                                        <a href="javascript:;" class="tpl-table-black-operation-del" onclick="del(this,'<?php echo $vo['data_id']; ?>','<?php echo url('del',array('fieldset_id'=>$formInfo['fieldset_id'])); ?>')"  >
                                            <i class="am-icon-trash"></i> 删除
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                            <!-- more data -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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
    /**
     * 删除操作
     */
    function del(obj,id,url) {
        //此处请求后台程序，下方是成功后的前台处理……
        if(confirm("确定要删除吗？")) {
            $.post(url, {
                id: id,
            }, function (data) {
                //console.log(data);
                if (data.code == 1) {
                    $(obj).parents("tr").remove();
                } else {
                    di_alert(data.msg,2);
                }
            })
        }
    }
</script>

<!--脚本文件结束-->
</html>
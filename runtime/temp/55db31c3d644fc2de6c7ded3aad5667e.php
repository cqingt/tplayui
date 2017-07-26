<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:27:"template/default\index.html";i:1497238268;s:30:"template/default\resource.html";i:1496912286;s:28:"template/default\header.html";i:1497255691;s:26:"template/default\left.html";i:1496994708;s:28:"template/default\footer.html";i:1496989717;}*/ ?>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title><?php echo $media['title']; ?></title>
<meta name="keywords" content="<?php echo $media['keywords']; ?>">
<meta name="description" content="<?php echo $media['description']; ?>">
<link rel="stylesheet" href="__PUBLIC__/home/css/pintuer.css">
<link rel="stylesheet" href="__PUBLIC__/home/css/style.css">
<link type="image/x-icon" href="favicon.ico" rel="shortcut icon" />
<link href="favicon.ico" rel="bookmark icon" />
</head>

<body>
<div class="layout fixed-top bg-white border-bottom" style="z-index: 9;">
    <div class="container">
        <div class="navbar" style="padding: 15px 0px;">
            <div class="navbar-head">
                <button class="button bg icon-navicon" data-target="#navbar-big1">
                </button>
                <a href="__ROOT__/" class="hidden-l">
                    <?php echo get_flag("logo"); ?>
                </a>
            </div>
            <div class="navbar-body nav-navicon" id="navbar-big1">
                <ul class="nav nav-inline nav-menu nav-big">
                    <li <?php if(empty($top_category_info['class_id']) || (($top_category_info['class_id'] instanceof \think\Collection || $top_category_info['class_id'] instanceof \think\Paginator ) && $top_category_info['class_id']->isEmpty())): ?>class="active"<?php endif; ?>>
                        <a class="icon-home" href="__ROOT__/">首页</a>
                    </li>
                    <!--这段代码的意思是如果有子菜单会显示子菜单，否则不显示。-->
                    <?php $__LIST__=get_cat("");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <li <?php if($vo['child_num'] > '0'): ?> class="nav-more<?php if($top_category_info['class_id'] == $vo['class_id']): ?> active<?php endif; ?>" <?php else: if($top_category_info['class_id'] == $vo['class_id']): ?>class="active"<?php endif; endif; ?>>
                        <a href="<?php echo $vo['curl']; ?>"><?php echo $vo['name']; ?></a>
                        <?php if($vo['child_num'] > '0'): ?>
                        <ul class="drop-menu">
                            <?php $a=$vo['class_id']; $__LIST__=get_cat("parent_id:$a");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
                            <li>
                                <a href="<?php echo $v['curl']; ?>"><?php echo $v['name']; ?></a>
                            </li>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                        <?php endif; ?>
                    </li>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    <li>
                        <a href="<?php echo url('Form/index',array('name'=>'guestbook')); ?>">留言板</a>
                    </li>
                </ul>
                <div class="navbar-text navbar-right">
                    <a class="box-shadow-small padding-small bg-green text-white"><span class="icon-puzzle-piece">
                        </span>&nbsp;注册 </a>&nbsp;
                    <a class="box-shadow-small padding-small bg-blue text-white" href="#"><span class="icon-sign-in"></span>&nbsp;登录 </a>&nbsp;
                </div>
                <div class="navbar-form navbar-right">
                    <form action="<?php echo url('home/Search/index'); ?>" method="post">
                        <input type="text" class="input input-auto radius-none" value="<?php echo (isset($keyword) && ($keyword !== '')?$keyword:''); ?>" name="keyword" size="15" placeholder="关键词">
                        <input type="submit" value="搜索" class="button radius-none">
                    </form>
                </div>
            </div>
        </div>
        <div class="text3D hidden-l">
            壹凯：
            <a href="//shang.qq.com/wpa/qunwpa?idkey=31f713ee8afb94e4190a68a0a374d98b4304d6aa0c7ca7d4b2f8093fa7d59401" target="_blank">1kbcms.祝大家2017开心每一天.---源码获取请加QQ群：488649173。</a>
        </div>
    </div>
</div>
<div class="container" style="margin-top: 125px;"></div>
<div class="container">
    <div class="line">
        <div class="xm9">
            <div class="bg-white">
                <strong class="padding bg-blue text-white"><?php echo (isset($category_info['name']) && ($category_info['name'] !== '')?$category_info['name']:'首页'); ?></strong>
                <div class="padding">
                    <?php $__LIST__=get_content("limit:2");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <div class="line margin-top">
                        <a href="<?php echo $vo['aurl']; ?>">
                            <div class="alert alert-yellow">
                                <strong><?php echo $vo['title']; ?></strong>
                                <p><?php echo $vo['description']; ?></p>
                                <div class="text-right">
                                    <b class="button button-small bg-green">阅读</b>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="hr">
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>
            <div class="container" style="margin-top: 25px;"></div>
            <div class="bg-white">
                <strong class="padding bg-blue text-white"><?php echo (isset($category_info['name']) && ($category_info['name'] !== '')?$category_info['name']:'产品推荐'); ?></strong>
                <div class="padding">
                    <?php $__LIST__=get_content("pos_id:1;limit:2");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <div class="line margin-top">
                        <a href="<?php echo $vo['aurl']; ?>">
                            <div class="alert alert-yellow">
                                <strong><?php echo $vo['title']; ?></strong>
                                <p><?php echo $vo['description']; ?></p>
                                <div class="text-right">
                                    <b class="button button-small bg-green">阅读</b>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="hr">
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>

            <div class="container" style="margin-top: 25px;"></div>
            <div class="bg-white">
                <strong class="padding bg-blue text-white"><?php echo (isset($category_info['name']) && ($category_info['name'] !== '')?$category_info['name']:'新闻推荐'); ?></strong>
                <div class="padding">
                    <?php $__LIST__=get_content("pos_id:2;limit:2");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <div class="line margin-top">
                        <a href="<?php echo $vo['aurl']; ?>">
                            <div class="alert alert-yellow">
                                <strong><?php echo $vo['title']; ?></strong>
                                <p><?php echo $vo['description']; ?></p>
                                <div class="text-right">
                                    <b class="button button-small bg-green">阅读</b>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="hr">
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>
        </div>
        <div class="xm3 padding-left">
    <div class="bg-white hidden-l">
        <strong class="padding bg-blue text-white">关于博主</strong>
        <div class="padding">
            <div class="padding-small">
                <p><?php echo get_flag("about"); ?></p>
            </div>
        </div>
    </div>
    <div class="margin-big-top">
    </div>

    <div class="bg-white hidden-l">
        <strong class="padding bg-blue text-white">友情链接</strong>
        <div class="padding">
            <div class="padding-small">
                <ul class="margin-bottom">
                    <?php $__LIST__=get_formlist("table:link;fieldset_id:2");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <span style="font-size: 10pt; line-height: 30px;">
                        <a href="<?php echo $vo['url']; ?>" target="_blank"><?php echo $vo['name']; ?></a>
                    </span><?php if($vo['last'] != '1'): ?>|<?php endif; endforeach; endif; else: echo "" ;endif; ?>
                </ul>
                <div>
                    <strong>换链？</strong>&nbsp;<span class="icon-angle-double-right"></span>&nbsp;
                    <a class="button-small icon-qq text-big text-black" title="壹凯QQ" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=529988248&site=qq&menu=yes">
                    </a>
                    <a class="button-small icon-weibo text-big text-red" title="壹凯微博" target="_blank" href="http://weibo.com/3004055021/profile?rightmod=1&wvr=6&mod=personinfo">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
    </div>
</div>
<br>
<div class="container-layout hidden-l">
    <div class="border-top padding-top">
        <div class="text-center">
            <ul class="nav nav-inline">
                <li><a href="__ROOT__/">网站首页</a></li>
                <?php $__LIST__=get_cat("");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                <li><a href="<?php echo $vo['curl']; ?>"><?php echo $vo['name']; ?></a></li>
                <?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
        <div class="text-center height-big">
            版权所有 1kbcms
        </div>
        <br>
    </div>
</div>
</body>
<script src="__PUBLIC__/home/js/pintuer.js"></script>
<script>
    $(function() {
        $(window).scroll(function() {
            if($(window).scrollTop() > 60) {
                $(".logo").addClass("hideout").hide();
                $(".text3D").hide();
            } else {
                $(".logo").removeClass("hideout").show();
                $(".text3D").show();
            }
        });
    });
</script>
</html>
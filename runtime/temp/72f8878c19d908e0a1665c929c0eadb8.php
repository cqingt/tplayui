<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:26:"template/default\page.html";i:1501552049;s:30:"template/default\resource.html";i:1501496785;s:28:"template/default\header.html";i:1501581278;s:28:"template/default\footer.html";i:1501552232;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<title><?php echo $media['title']; ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="<?php echo $media['keywords']; ?>">
<meta name="description" content="<?php echo $media['description']; ?>">
<link rel="stylesheet" href="__HOME__/layui/css/layui.css">
<link rel="stylesheet" href="__HOME__/css/global.css">
</head>
<body>
<div class="header">
    <div class="main">
        <!--<a class="logo" href="__ROOT__/" title="Fly">Fly社区</a>-->
        <div class="logo">
            <img src="__HOME__/images/logo.png" />
        </div>
        <div class="nav">
            <a <?php if(empty($top_category_info['class_id']) || (($top_category_info['class_id'] instanceof \think\Collection || $top_category_info['class_id'] instanceof \think\Paginator ) && $top_category_info['class_id']->isEmpty())): ?>class="nav-this"<?php endif; ?> href="__ROOT__/"><i class="iconfont icon-wenda"></i>首页</a>
            <?php $__LIST__=get_cat("");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <a href="<?php echo $vo['curl']; ?>" <?php if($top_category_info['class_id'] == $vo['class_id']): ?>class="nav-this"<?php endif; ?>><i class="iconfont icon-ui"></i><?php echo $vo['name']; ?></a>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </div>

        <div class="nav-user">
            <?php if(empty(\think\Session::get('home_user.user_id')) || ((\think\Session::get('home_user.user_id') instanceof \think\Collection || \think\Session::get('home_user.user_id') instanceof \think\Paginator ) && \think\Session::get('home_user.user_id')->isEmpty())): ?>
            <!-- 未登入状态 -->
            <a class="unlogin" href="<?php echo url('index/login'); ?>"><i class="iconfont icon-touxiang"></i></a>
            <span><a href="<?php echo url('index/login'); ?>">登入</a><a href="<?php echo url('index/reg'); ?>">注册</a></span>
            <p class="out-login">
                <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
                <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
            </p>
            <?php else: ?>
            <!-- 登入后的状态 -->
            <a class="avatar" href="<?php echo url('user/userhome'); ?>">
              <img src="<?php echo (\think\Session::get('home_user.head_url') ?: '__HOME__/default_img/default2.jpg'); ?>">
              <cite><?php echo (\think\Session::get('home_user.nickname') ?: '未设置昵称'); ?></cite>
            </a>
            <div class="nav">
              <a href="<?php echo url('user/userSet'); ?>"><i class="iconfont icon-shezhi"></i>设置</a>
              <a href="<?php echo url('index/loginOut'); ?>"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>
<div class="main layui-clear">
  <div class="wrap">
    <div class="detail">
      <div class="fly-panel detail-box">
        <h1><?php echo $category_info['name']; ?></h1>
        <div class="detail-body photos" style="margin-bottom: 20px;margin-top: 40px;">
            <?php echo $category_info['content']; ?>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="footer">
    底部信息
</div>
<script src="__HOME__/layui/layui.js"></script>
<script>
    /*layui.config({
        version: "2.0.0"
        ,base: '__HOME__/mods/'
    }).extend({
        fly: 'index'
    })*/
    layui.config({
        base: '__HOME__/js/',
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

</body>
</html>
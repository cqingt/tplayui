<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:31:"template/default\guestbook.html";i:1501658878;s:30:"template/default\resource.html";i:1501496785;s:28:"template/default\header.html";i:1501658140;s:28:"template/default\footer.html";i:1501659061;}*/ ?>

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
        <div class="logo" onclick="window.location.href='__ROOT__/'" style="cursor: pointer">
            <?php echo get_flag("logo"); ?>
        </div>
        <div class="nav">
            <a <?php if(empty($top_category_info['class_id']) || (($top_category_info['class_id'] instanceof \think\Collection || $top_category_info['class_id'] instanceof \think\Paginator ) && $top_category_info['class_id']->isEmpty())): ?>class="nav-this"<?php endif; ?> href="__ROOT__/"><i class="iconfont icon-wenda"></i>首页</a>
            <?php $__LIST__=get_cat("");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <a href="<?php echo $vo['curl']; ?>" <?php if($top_category_info['class_id'] == $vo['class_id']): ?>class="nav-this"<?php endif; ?>><i class="iconfont icon-ui"></i><?php echo $vo['name']; ?></a>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            <a <?php if(input('name') == 'guestbook'): ?>class="nav-this"<?php endif; ?> href="<?php echo url('form/index',array('name'=>'guestbook')); ?>"><i class="iconfont icon-wenda"></i>留言板</a>
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
  <div class="fly-panel" pad20>
    <h2 class="page-title">发表问题</h2>
    
    <!-- <div class="fly-none">并无权限</div> -->

    <div class="layui-form layui-form-pane">
        <form id="form1" action="<?php echo url('Form/push'); ?>">
        <div class="layui-form-item">
          <label for="L_name" class="layui-form-label">昵称</label>
          <div class="layui-input-block">
            <input type="text" id="L_name" name="name" placeholder="请输入您的昵称" required jq-verify="required" jq-error="请输入昵称" autocomplete="off" class="layui-input">
          </div>
        </div>
        <div class="layui-form-item">
            <label for="L_email" class="layui-form-label">邮箱</label>
            <div class="layui-input-block">
                <input type="text" id="L_email" name="email" placeholder="请输入您的邮箱" required jq-verify="required|email" jq-error=" 邮箱不能为空|邮箱格式不正确" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
          <div class="layui-input-block">
            <textarea id="L_content" name="content" required jq-verify="required" placeholder="请输入内容" jq-error="内容不能为空" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
          </div>
          <label for="L_content" class="layui-form-label" style="top: -2px;">内容</label>
        </div>

        <div class="layui-form-item">
            <input name="table" type="hidden" value="guestbook">
          <button class="layui-btn" jq-submit lay-filter="submit" jq-tab="true">立即留言</button>
        </div>
      </form>
    </div>
  </div>
</div>
<div class="footer">
    <?php echo get_flag("bottom"); ?>
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

<script>
    layui.use('pageform',function () {
        var $       = layui.jquery,
            form    = layui.jqform;
        //自定义
        form.verify({
            password2: function(value) {
                if (value === "")
                    return "请输入二次密码！";
            }
        });
    });
</script>
</body>
</html>
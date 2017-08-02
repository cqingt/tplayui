<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:25:"template/default\reg.html";i:1501571578;s:30:"template/default\resource.html";i:1501496785;s:28:"template/default\header.html";i:1501658140;s:28:"template/default\footer.html";i:1501659061;}*/ ?>
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

  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief">
      <ul class="layui-tab-title">
        <li><a href="login.html">登入</a></li>
        <li class="layui-this">注册</li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
              <form id="form1" action="<?php echo url(''); ?>">
              <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_email" placeholder="请输入邮箱" name="email" required jq-verify="required|email" jq-error=" 邮箱不能为空|邮箱格式不正确"  autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">将会成为您唯一的登入名</div>
              </div>
              <div class="layui-form-item">
                <label for="L_nickname" class="layui-form-label">昵称</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_nickname" placeholder="请输入昵称" name="nickname" required jq-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_password" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_password" placeholder="请输入密码" name="password" required jq-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
              </div>
              <div class="layui-form-item">
                <label for="L_password2" class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_password2" placeholder="请输入确认密码" name="password2" required jq-verify="required|password2" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <button class="layui-btn" jq-submit lay-filter="submit" jq-tab="true">立即注册</button>
              </div>
              <div class="layui-form-item fly-form-app">
                <span>或者直接使用社交账号快捷注册</span>
                <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
                <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
              </div>
            </form>
          </div>
        </div>
      </div>
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
                var pwd = $('input[name=password]').val();
                if (pwd !== value)
                    return "二次输入的密码不一致！";
            }
        });
    });
</script>
</body>
</html>
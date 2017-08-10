<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:27:"template/default\index.html";i:1502187762;s:30:"template/default\resource.html";i:1501496785;s:28:"template/default\header.html";i:1502184595;s:28:"template/default\footer.html";i:1502183398;}*/ ?>
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
            <?php if(\think\Lang::get('lang_type') == 'en-us'): ?>
            <?php echo get_flag("en_logo"); else: ?>
            <?php echo get_flag("logo"); endif; ?>
        </div>
        <div class="nav">
            <a <?php if(empty($top_category_info['class_id']) || (($top_category_info['class_id'] instanceof \think\Collection || $top_category_info['class_id'] instanceof \think\Paginator ) && $top_category_info['class_id']->isEmpty())): ?>class="nav-this"<?php endif; ?> href="__ROOT__/"><i class="iconfont icon-wenda"></i><?php echo \think\Lang::get('shouye'); ?></a>
            <?php $__LIST__=get_cat("");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <a href="<?php echo $vo['curl']; ?>" <?php if($top_category_info['class_id'] == $vo['class_id']): ?>class="nav-this"<?php endif; ?>><i class="iconfont icon-ui"></i><?php echo $vo['name']; ?></a>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            <a <?php if(input('name') == 'guestbook'): ?>class="nav-this"<?php endif; ?> href="<?php echo url('form/index',array('name'=>'guestbook')); ?>"><i class="iconfont icon-wenda"></i><?php echo \think\Lang::get('liuyanban'); ?></a>
        </div>

        <div class="nav-user">
            <?php if(empty(\think\Session::get('home_user.user_id')) || ((\think\Session::get('home_user.user_id') instanceof \think\Collection || \think\Session::get('home_user.user_id') instanceof \think\Paginator ) && \think\Session::get('home_user.user_id')->isEmpty())): ?>
            <!-- 未登入状态 -->
            <a class="unlogin" href="<?php echo url('index/login'); ?>"><i class="iconfont icon-touxiang"></i></a>
            <span><a href="<?php echo url('index/login'); ?>"><?php echo \think\Lang::get('dengru'); ?></a><a href="<?php echo url('index/reg'); ?>"><?php echo \think\Lang::get('zhuce'); ?></a></span>
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
              <a href="<?php echo url('user/userSet'); ?>"><i class="iconfont icon-shezhi"></i><?php echo \think\Lang::get('shezhi'); ?></a>
              <a href="<?php echo url('index/loginOut'); ?>"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i><?php echo \think\Lang::get('tuile'); ?></a>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>
<div class="main layui-clear">
  <div class="wrap">
    <div class="content">
      <ul class="fly-list">
          <?php $__LIST__=get_content("limit:10");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
        <li class="fly-list-li">
          <a href="<?php echo $vo['aurl']; ?>" class="fly-list-avatar">
            <img src="<?php echo (isset($vo['image']) && ($vo['image'] !== '')?$vo['image']:'__HOME__/images/avatar/default.png'); ?>" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="<?php echo $vo['aurl']; ?>"><?php echo $vo['title']; ?></a>
          </h2>
          <p>
            <span><?php echo date('Y-m-d H:i',$vo['time']); ?></span>
            <span class="fly-list-hint">
              <i class="iconfont" title="人气">&#xe60b;</i> <?php echo $vo['views']; ?>
            </span>
          </p>
        </li>
          <?php endforeach; endif; else: echo "" ;endif; ?>
      </ul>
    </div>
  </div>
  <div class="edge">
    <div class="fly-panel leifeng-rank">
      <h3 class="fly-panel-title"><?php echo \think\Lang::get('quanwenjiansuo'); ?></h3>
        <form action="<?php echo url('home/Search/index'); ?>" method="post">
            <div class="layui-input-inline" style="margin-left:20px;width: 200px;">
                <input value="<?php echo (isset($keyword) && ($keyword !== '')?$keyword:''); ?>" class="layui-input" placeholder="<?php echo \think\Lang::get('guanjianci'); ?>" type="text" name="keyword">
            </div>
            <div class="layui-input-inline" style="width: 100px;">
                <input class="layui-btn" type="submit" value="<?php echo \think\Lang::get('sousuo'); ?>">
            </div>
        </form>
        <div style="margin: 15px 20px">
            <a class="layui-btn ajax" style="cursor: pointer" data-params='{"url": "<?php echo url("api/api/change"); ?>","confirm":"false","data":"lang=zh-cn","complete":"chang"}'>
                <?php echo \think\Lang::get('zhongwen'); ?>
            </a>
            <a class="layui-btn ajax" style="cursor: pointer" data-params='{"url": "<?php echo url("api/api/change"); ?>","confirm":"false","data":"lang=en-us","complete":"chang"}'>
                <?php echo \think\Lang::get('yingwen'); ?>
            </a>
        </div>
    </div>
    <dl class="fly-panel fly-list-one">
      <dt class="fly-panel-title"><?php echo \think\Lang::get('shouyetuijian'); ?></dt>
        <?php $__LIST__=get_content("pos_id:1;limit:2");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
      <dd>
        <a href="<?php echo $vo['aurl']; ?>"><?php echo $vo['title']; ?></a>
        <span><i class="iconfont">&#xe60b;</i> <?php echo $vo['views']; ?></span>
      </dd>
        <?php endforeach; endif; else: echo "" ;endif; ?>
    </dl>
    <div class="fly-panel fly-link">
      <h3 class="fly-panel-title"><?php echo \think\Lang::get('youqinglianjie'); ?></h3>
      <dl>
          <?php $__LIST__=get_formlist("table:link;fieldset_id:2");if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <dd><a href="<?php echo $vo['url']; ?>" target="_blank"><?php echo $vo['name']; ?></a></dd>
          <?php endforeach; endif; else: echo "" ;endif; ?>
      </dl>
    </div>
  </div>
</div>
<div class="footer">
    <?php if(\think\Lang::get('lang_type') == 'en-us'): ?>
    <?php echo get_flag("en_bottom"); else: ?>
    <?php echo get_flag("bottom"); endif; ?>

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
    layui.use('index');
</script>
</body>
</html>
<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:30:"template/default\user_set.html";i:1501585283;s:30:"template/default\resource.html";i:1501496785;s:28:"template/default\header.html";i:1501581278;s:28:"template/default\footer.html";i:1501552232;}*/ ?>
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
<div class="main fly-user-main layui-clear">
  <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
    <li class="layui-nav-item">
      <a href="home.html">
        <i class="layui-icon">&#xe609;</i>
        我的主页
      </a>
    </li>
    <li class="layui-nav-item">
      <a href="index.html">
        <i class="layui-icon">&#xe612;</i>
        用户中心
      </a>
    </li>
    <li class="layui-nav-item layui-this">
      <a href="set.html">
        <i class="layui-icon">&#xe620;</i>
        基本设置
      </a>
    </li>
    <li class="layui-nav-item">
      <a href="message.html">
        <i class="layui-icon">&#xe611;</i>
        我的消息
      </a>
    </li>
  </ul>
  
  <div class="site-tree-mobile layui-hide">
    <i class="layui-icon">&#xe602;</i>
  </div>
  <div class="site-mobile-shade"></div>
  
  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief" lay-filter="user">
      <ul class="layui-tab-title" id="LAY_mine">
        <li class="layui-this" lay-id="info">我的资料</li>
        <li lay-id="avatar">头像</li>
        <li lay-id="pass">密码</li>
        <li lay-id="bind">帐号绑定</li>
      </ul>
      <div class="layui-tab-content" style="padding: 20px 0;">
        <div class="layui-form layui-form-pane layui-tab-item layui-show">
            <form action="<?php echo url(''); ?>">
            <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">邮箱</label>
              <div class="layui-input-inline">
                <input type="text" id="L_email" name="email" required lay-verify="email" autocomplete="off" value="<?php echo $user_info['email']; ?>" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">登录的账号</div>
            </div>
            <div class="layui-form-item">
              <label for="L_nickname" class="layui-form-label">昵称</label>
              <div class="layui-input-inline">
                <input type="text" id="L_nickname" name="nickname" required lay-verify="required" autocomplete="off" value="<?php echo $user_info['nickname']; ?>" class="layui-input">
              </div>
              <div class="layui-inline">
                <div class="layui-input-inline">
                  <input type="radio" name="sex" value="1" <?php if($user_info['sex'] == '1'): ?> checked<?php endif; ?> title="男">
                  <input type="radio" name="sex" value="2" <?php if($user_info['sex'] == '2'): ?> checked<?php endif; ?> title="女">
                </div>
              </div>
            </div>
            <div class="layui-form-item">
              <label for="L_address" class="layui-form-label">地址</label>
              <div class="layui-input-inline">
                <input type="text" id="L_address" name="address" autocomplete="off" value="<?php echo $user_info['address']; ?>" class="layui-input">
              </div>
            </div>
            <div class="layui-form-item layui-form-text">
              <label for="L_description" class="layui-form-label">介绍</label>
              <div class="layui-input-block">
                <textarea placeholder="随便写些什么刷下存在感" id="L_description"  name="description" autocomplete="off" class="layui-textarea" style="height: 80px;"><?php echo $user_info['description']; ?></textarea>
              </div>
            </div>
            <div class="layui-form-item">
              <button class="layui-btn" jq-submit lay-filter="submit" jq-tab="true">确认修改</button>
            </div>
            </form>
          </div>

          <div class="layui-form layui-form-pane layui-tab-item">
            <div class="layui-form-item">
              <div class="avatar-add">
                <p>建议尺寸168*168，支持jpg、png、gif，最大不能超过30KB</p>
                <div class="upload-img">
                    <input type="file" name="image" class="layui-upload-file">
                    <input type="hidden" name="image" value="<?php echo (isset($info['image']) && ($info['image'] !== '')?$info['image']:''); ?>" jq-error="请上传形象图" error-id="img-error">
                    <p id="img-error" class="error"></p>
                </div>
                <img src="<?php echo (isset($user_info['head_url']) && ($user_info['head_url'] !== '')?$user_info['head_url']:'__HOME__/default_img/default2.jpg'); ?>" id="img-thumb">
                <span class="loading"></span>
              </div>
            </div>
          </div>

          <div class="layui-form layui-form-pane layui-tab-item">
              <form  action="<?php echo url('editPassword'); ?>" method="post">
              <div class="layui-form-item">
                <label for="L_nowpassword" class="layui-form-label">当前密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_nowpassword" placeholder="请输入当前密码" name="nowpassword" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_password" class="layui-form-label">新密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_password" placeholder="请输入新密码" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
              </div>
              <div class="layui-form-item">
                <label for="L_password2" class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_password2" placeholder="请输入确认密码" name="password2" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <button class="layui-btn" jq-submit lay-filter="submit" jq-tab="true">确认修改</button>
              </div>
            </form>
          </div>

          <div class="layui-form layui-form-pane layui-tab-item">
            <ul class="app-bind">
              <li class="fly-msg app-havebind">
                <i class="iconfont icon-qq"></i>
                <span>已成功绑定，您可以使用QQ帐号直接登录Fly社区，当然，您也可以</span>
                <a href="javascript:;" class="acc-unbind" type="qq_id">解除绑定</a>

                <!-- <a href="" onclick="layer.msg('正在绑定微博QQ', {icon:16, shade: 0.1, time:0})" class="acc-bind" type="qq_id">立即绑定</a>
                <span>，即可使用QQ帐号登录Fly社区</span> -->
              </li>
              <li class="fly-msg">
                <i class="iconfont icon-weibo"></i>
                <!-- <span>已成功绑定，您可以使用微博直接登录Fly社区，当然，您也可以</span>
                <a href="javascript:;" class="acc-unbind" type="weibo_id">解除绑定</a> -->

                <a href="" class="acc-weibo" type="weibo_id"  onclick="layer.msg('正在绑定微博', {icon:16, shade: 0.1, time:0})" >立即绑定</a>
                <span>，即可使用微博帐号登录Fly社区</span>
              </li>
            </ul>
          </div>
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

<script>
    layui.use('setform',function () {
        $ = layui.jquery;
        layui.upload({
            url: '<?php echo url("upload/uploadHead"); ?>'
            ,success: function(res){
                console.log(res); //上传成功返回值，必须为json格式
                if (res.status==200){
                    $('#img-thumb').attr('src',res.url);
                    layer.msg(res.msg);
                }else{
                    layer.msg(res.msg);
                }
            }
        });
    });
</script>
</body>
</html>
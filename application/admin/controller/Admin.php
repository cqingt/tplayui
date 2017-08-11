<?php
namespace app\admin\controller;
use think\Controller;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/11/21 0021
 * Time: 下午 4:37
 */
class Admin extends Controller{
    public function __construct(\think\Request $request){
        parent::__construct($request);
        /* 设置路由参数 */
    }
    //当任何函数加载时候  会调用此函数
    public function _initialize(){//默认的方法  会自动执行 特征有点像构造方法
        if (empty(get_lang_id())){
            cookie('think_var', 'zh-cn');
        }
        // 检测用户登录
        define('ADMIN_ID',$this->isLogin());
        if( !ADMIN_ID && ( request()->module() <> 'admin' || request()->controller() <> 'Login' )){
            $this->redirect('admin/Login/index');
        }
        if(!(request()->module() == 'admin' && request()->controller() == 'Login')){
            //设置登录用户信息
            $this->loginUserInfo = model('admin/AdminUser')->getInfo(ADMIN_ID);
            //赋值当前菜单
            if(method_exists($this,'_infoModule')){
                $this->assign('infoModule',$this->_infoModule());
            }
        }
    }
    /**
     * 检测用户是否登录
     * @return int 用户IP
     */
    protected function isLogin(){
        $user = session('admin_user');
        if (empty($user)) {
            return 0;
        } else {
            return session('admin_user_sign') == data_auth_sign($user) ? $user['user_id'] : 0;
        }
    }
    /*
     * 一键清空缓存
     */
    public function delcache() {
        $path=ROOT_PATH.'/runtime';
        delDirAndFile($path);
        return ajaxReturn(200,'缓存清除成功');
    }

    /**
     * 检查分类修改信息
     */
    public function parentCheck(){
        //获取变量
        $classId = input('post.class_id');
        $parentId = input('post.parent_id');
        //判断空上级
        if(!$parentId){
            return true;
        }
        // 分类检测
        if ($classId == $parentId){
            return '不可以将当前栏目设置为上一级栏目';
        }
        $cat = model('kbcms/Category')->loadList(array(),$classId);
        if(empty($cat)){
            return true;
        }
        foreach ($cat as $vo) {
            if ($parentId == $vo['class_id']) {
                return '不可以将上一级栏目移动到子栏目';
            }
        }
        return true;
    }
    /**
     * 检查导航分类修改信息
     */
    public function parentMenuCheck(){
        //获取变量
        $id = input('post.id');
        $parentId = input('post.parent_id');
        //判断空上级
        if(!$parentId){
            return true;
        }
        // 分类检测
        if ($id == $parentId){
            return '不可以将当前栏目设置为上一级栏目';
        }
        $cat = model('admin/NavMenu')->loadList(array(),$id);
        if(empty($cat)){
            return true;
        }
        foreach ($cat as $vo) {
            if ($parentId == $vo['nav_id']) {
                return '不可以将上一级栏目移动到子栏目';
            }
        }
        return true;
    }
}
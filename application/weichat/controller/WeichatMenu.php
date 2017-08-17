<?php
namespace app\weichat\controller;
use app\admin\controller\Admin;
/**
 * 后台公众号菜单
 */
class WeichatMenu extends Admin {
    /**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '公众号菜单管理',
                'description' => '管理网站后台管理员',
                ),
            'menu' => array(
                    array(
                        'name' => '公众号菜单列表',
                        'url' => url('index'),
                        'icon' => 'list',
                    ),
                ),
            '_info' => array(
                    array(
                        'name' => '添加公众号菜单',
                        'url' => url('info'),
                    ),
                    array(
                        'name' => '同步菜单',
                        'url' => url('/weichat/index/weichatMenu'),
                        'function'=>'ajax'
                    ),
                ),
            );
    }
	/**
     * 列表
     */
    public function index(){
        //查询数据
        $list = model('WeichatMenu')->loadList();
        //模板传值
        $this->assign('list',$list);
        $this->assign('type_arr',array('1'=>'关键词回复','2'=>'页面跳转'));
        return $this->fetch();
    }
    /**
     * 详情
     */
    public function info(){
        $weichatId = input('menu_id');
        $model = model('WeichatMenu');
        if (input('post.')){
            $check=$this->wxMenuCheck();
            if ($check!==true){
                return ajaxReturn(0,$check);
            }
            if ($weichatId){
                $check_status=$this->parentWxMenuCheck();
                if ($check_status!==true){
                    return ajaxReturn(0,$check_status);
                }
                $status=$model->edit();
            }else{
                $check_status=$this->parentWxMenuThreeCheck();
                if ($check_status!==true){
                    return ajaxReturn(0,$check_status);
                }
                $status=$model->add();
            }
            if($status!==false){
                return ajaxReturn(200,'操作成功',url('index'));
            }else{
                return ajaxReturn(0,'操作失败');
            }
        }else{
            $this->assign('info', $model->getInfo($weichatId));
            $this->assign('menuList',$model->loadList());//菜单
            return $this->fetch();
        }
    }

    /**
     * 删除
     */
    public function del(){
        $weichatId = input('id');
        if(empty($weichatId)){
            return ajaxReturn(0,'参数不能为空');
        }
        if($weichatId == 1){
            return ajaxReturn(0,'保留公众号菜单无法删除');
        }
        if(model('WeichatMenu')->del($weichatId)){
            return ajaxReturn(200,'公众号菜单删除成功！');
        }else{
            return ajaxReturn(0,'公众号菜单删除失败');
        }
    }
}


<?php
namespace app\weichat\controller;
use \org\weixin\Wechat;
use \think\Db;
class Index extends AdminWeichat
{
    //当任何函数加载时候  会调用此函数
    public function _initialize(){//默认的方法  会自动执行 特征有点像构造方法
        parent::_initialize();
        //$this->weichatMenu();//创建菜单
        //$this->weichatMenuDel();//删除菜单
    }
    //首页
    public function index(){
        $this->autoReply();//请求自动回复
    }
    /**
     * 自动回复
     */
    public function autoReply(){
        //查询数据
        $info=Db::name('weichat_reply_config')->find(1);
        //回复
        $weObj=$this->weObj;
        $type = $weObj->getRev()->getRevType();
        switch($type) {
            case Wechat::MSGTYPE_TEXT:
                $weObj->text($info['content'])->reply();
                break;
            case Wechat::MSGTYPE_EVENT:
                $info=$weObj->getRevEvent();
                //判断是否点击事件
                if ($info['event']=='CLICK'){
                    $weObj->text($info['key'])->reply();
                }
                break;
            case Wechat::MSGTYPE_IMAGE:
                break;
            default:
                $weObj->text("help info")->reply();
        }
    }
    /**
     * 创建菜单
     */
    public function weichatMenu(){
        //测试数组
        $data=array (
            'button' => array (
                0 => array (
                    'type' => 'click',
                    'name' => '今日歌曲',
                    'key' => 'V1001_TODAY_MUSIC',
                ),
            ),
        );
        $list=Db::name('weichat_menu')->order('sort ASC,menu_id DESC')->where('parent_id',0)->select();
        $menuData = [];
        if ($list){
            foreach ($list as $key=>$val) {
                $menuData[$val['menu_id']] = $this->_subMenu($val);
                $list_child=Db::name('weichat_menu')->order('sort ASC,menu_id DESC')->where('parent_id',$val['menu_id'])->select();
                if ($list_child){
                    unset($menuData[$val['menu_id']]['type']);
                    unset($menuData[$val['menu_id']]['key']);
                    unset($menuData[$val['menu_id']]['url']);
                    foreach ($list_child as $k=>$v){
                        $menuData[$val['menu_id']]['sub_button'][]=$this->_subMenu($v);
                    }
                }
            }
        }
        $weObj=$this->weObj;
        $data['button']=array_values($menuData);
        if ($weObj->createMenu($data)){
            return ajaxReturn(200,'同步成功');
        }else{
            return ajaxReturn(0,'同步失败');
        }
    }
    public function _subMenu($data) {
        switch ($data['type']){
            case 1:
                $menuData['type'] = 'click';
                $menuData['key'] = $data['key'];
                break;
            case 2:
                $menuData['type'] = 'view';
                $menuData['url'] = $data['key'];
                break;
            default:
                $menuData['type'] = 'click';
                $menuData['key'] = $data['key'];
                break;
        }
        $menuData['name'] = $data['name'];
        return $menuData;

    }
    /**
     * 删除菜单
     */
    public function weichatMenuDel(){
        $weObj=$this->weObj;
        //$weObj = new Wechat();
        $weObj->deleteMenu();
    }
}
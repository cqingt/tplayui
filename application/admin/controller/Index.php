<?php
namespace app\admin\controller;

class Index extends Admin{
    /**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info' => array(
                'name' => '管理首页',
                'description' => '站点运行信息',
            ),
            'menu' => array(
            array(
                'name' => '首页',
                'url' => url('index'),
                'icon' => 'list',
            ),
        ),
        );
    }
    public function index(){
        return $this->fetch();
    }
    public function test(){
        return $this->fetch();
    }
    public function home(){
        return $this->fetch();
    }
}

<?php
namespace app\home\controller;
class Index extends Site{
    //首页
    public function index(){
        //MEDIA信息
        $media=$this->getMedia();
        $this->assign('media', $media);
        $this->assign('crumb', array());
        //给模版给以一个当前时间戳的值
        $this->assign('demo_time',$this->request->time());
        return $this->siteFetch(get_site('tpl_index'));
    }
    //注册
    public function reg(){
        if (input('post.')){
            if (empty(input('password'))){
                return ajaxReturn(0,'请输入密码');
            }
        }else{
            return $this->siteFetch('reg');
        }
    }
}

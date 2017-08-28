<?php
namespace app\weichat\controller;
use \org\weixin\Wechat;
use \think\Db;
class Index extends AdminWeichat
{
    //当任何函数加载时候  会调用此函数
    public function _initialize(){//默认的方法  会自动执行 特征有点像构造方法
        parent::_initialize();
    }
    //首页
    public function index(){
//        $weiObj=new Wechat(get_weichat_options());
//        $weiObj->valid();//明文或兼容模式可以在接口验证通过后注释此句，但加密模式一定不能注释，否则会验证失败
        $this->autoReply();//请求自动回复
    }
    /**
     * 自动回复
     */
    public function autoReply(){
        //查询数据
        $where['weichat_id']=get_weichat_id();
        $info=Db::name('weichat_reply_config')->where($where)->find();
        //回复
        $weObj=new Wechat(get_weichat_options());
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
        $where['parent_id']=0;
        $where['weichat_id']=get_weichat_id();
        $list=Db::name('weichat_menu')->order('sort DESC,menu_id ASC')->where($where)->select();
        $menuData = [];
        if ($list){
            foreach ($list as $key=>$val) {
                $menuData[$val['menu_id']] = $this->_subMenu($val);
                $list_child=Db::name('weichat_menu')->order('sort DESC,menu_id ASC')->where(array('parent_id'=>$val['menu_id'],'weichat_id'=>get_weichat_id()))->select();
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
        $weObj=new Wechat(get_weichat_options());
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
     * 获取永久素材总数
     */
    public function getForeverCount(){
        $webObj=new Wechat(get_weichat_options());
        var_dump($webObj->getForeverCount());
    }
    /**
     *  获取永久素材列表(认证后的订阅号可用)
     */
    public function getForeverList($type='image',$offset='0',$count='10'){
        $webObj=new Wechat(get_weichat_options());
        var_dump($webObj->getForeverList($type,$offset,$count));
    }
    /**
     * 上传永久其他类型素材
     */
    public function uploadForeverMedia($url='/uploads/admin/20170419/8cb36838cc73b0bfdceff8f2c043b743.jpg', $type='image',$is_video=false,$video_info=array()){
        //判断相对路径
        var_dump(model('weichat/WeichatMaterialImage')->add($url, $type,$is_video,$video_info));
    }
    /**
     * 上传临时图片素材
     *  返回url
     */
    public function uploadImg(){
        $data['media'] = '@uploads/admin/20170419/8cb36838cc73b0bfdceff8f2c043b743.jpg';
        $webObj=new Wechat(get_weichat_options());
        var_dump($data);
        var_dump($webObj->uploadImg(($data)));
    }
    /**
     * 上传永久图文素材
     */
    public function uploadForeverArticles(){
        $weiObj=new Wechat(get_weichat_options());
        /*$data=array(
            array(
                "title"=> '测试',
                "thumb_media_id"=> 'GgLJUrcKt-y2CyAuUKdQotAbSCog_jN10u2mqN7vyDE',//'GgLJUrcKt-y2CyAuUKdQojXXQ3nYhUTX0O9diy5VlVg',
                "author"=> 'hongkai',
                "digest"=> '新增摘要测试',
                "show_cover_pic"=> 1,
                "content"=> '图文消息内容',
                "content_source_url"=> 'http://www.baidu.com'
            )
        );*/
        $data[]=array(
            "title"=> '测试',
            "thumb_media_id"=> 'GgLJUrcKt-y2CyAuUKdQotAbSCog_jN10u2mqN7vyDE',//'GgLJUrcKt-y2CyAuUKdQojXXQ3nYhUTX0O9diy5VlVg',
            "author"=> 'hongkai',
            "digest"=> '新增摘要测试',
            "show_cover_pic"=> 1,
            "content"=> '图文消息内容',
            "content_source_url"=> 'http://www.baidu.com'
        );
        $data['articles']=$data;
        var_dump($weiObj->uploadForeverArticles($data));
    }
    public function test(){
        var_dump(model('Index')->updateForeverArticles());
    }
}

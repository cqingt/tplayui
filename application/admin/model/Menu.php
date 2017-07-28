<?php
namespace app\admin\model;
/**
 * 后台菜单
 */
class Menu {
	/**
     * 获取所有菜单
     */
	public function getMenu($loginUserInfo = array(),$cutUrl = '',$urlComplete = true){
		$list = (array)get_all_service('Menu','Admin');
        if (!empty($loginUserInfo)&&(ADMIN_ID!=1)){
            $list=get_menu_purview($list['data']['list'],$loginUserInfo['menu_purview']);
        }
        return $list;
	}
    /**
     * 获取用户组权限所有菜单
     */
    public function getPurMenu(){
        $list = (array)get_all_service('Menu','Admin');
        $list=$list['data']['list'];
        if ($list){
            $data=array();
            foreach ($list as $key=>$val){
                $data[$key]['id']=$val['id'];
                $data[$key]['url']=$val['url'];
                $data[$key]['name']=$val['name'];
                $data[$key]['iconfont']=$val['iconfont'];
                if (!empty($val['sub'])){
                    $i=1000;
                    foreach ($val['sub'] as $kk=>$vv){
                        $data[$key]['sub'][$kk]['id']=$vv['id'];
                        $data[$key]['sub'][$kk]['url']=$vv['url'];
                        $data[$key]['sub'][$kk]['name']=$vv['name'];
                        $data[$key]['sub'][$kk]['iconfont']=$vv['iconfont'];
                        if (!empty($vv['sub'])){
                            foreach ($vv['sub'] as $kkk=>$vvv){
                                $i++;
                                $data[$key]['sub'][$i]['id']=$vvv['id'];
                                $data[$key]['sub'][$i]['url']=$vvv['url'];
                                $data[$key]['sub'][$i]['name']=$vvv['name'];
                                $data[$key]['sub'][$i]['iconfont']=$vvv['iconfont'];
                            }
                        }
                    }
                }
            }
        }
        return $data;
    }
    /**
     * 获取所有操作
     */
    public function getPurview(){
        $list = get_all_service('Purview','Admin');
        if(empty($list)){
            return $list;
        }
        return $list;
    }
}
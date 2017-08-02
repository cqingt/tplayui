<?php
namespace app\admin\service;
/**
 * 后台菜单接口
 */
class Menu{
	/**
	 * 获取菜单结构
	 */
	public function getAdminMenu(){
        //获取表单列表
        $formList = model('kbcms/FieldsetForm')->loadList();
        $formMenu = array();
        if(!empty($formList)){
            foreach ($formList as $key => $value) {
                $formMenu[] = array(
                    'id'=>'30'.$key+1,
                    'url' => url('kbcms/AdminFormData/index',array('fieldset_id'=>$value['fieldset_id'])),
                    'name' => $value['name'],
                    'iconfont' => '&#xe62a;'
                );
            }
        }
		return array(
            array(
                'id'=>10,
                'url'=>'',
                'name'=>'首页',
                'iconfont'=>'&#xe637;',
                'sub'=>array(
                    array(
                        'id'=>11,
                        'url'=>url('admin/Index/home'),
                        'name'=>'管理首页',
                        'iconfont'=>'&#xe635;'
                    )
                )
            ),
            array(
                'id'=>20,
                'url'=>'',
                'name'=>'内容',
                'iconfont'=>'&#xe637;',
                'sub'=>array(
                    array(
                        'id'=>21,
                        'url'=>url('kbcms/AdminCategory/index'),
                        'name'=>'栏目管理',
                        'iconfont'=>'&#xe635;'
                    ),
                    array(
                        'id'=>22,
                        'url'=>url('article/AdminContent/index'),
                        'name'=>'文章管理',
                        'iconfont'=>'&#xe62a;'
                    )
                )
            ),
            array(
                'id'=>30,
                'url'=>'',
                'name'=>'表单',
                'iconfont'=>'&#xe64a;',
                'sub'=>$formMenu
            ),
            array(
                'id'=>40,
                'url'=>'',
                'name'=>'功能',
                'iconfont'=>'&#xe637;',
                'sub'=>array(
                    array(
                        'id'=>31,
                        'url'=>url('kbcms/AdminFragment/index'),
                        'name'=>'碎片管理',
                        'iconfont'=>'&#xe62a;'
                    ),
                    array(
                        'id'=>32,
                        'url'=>url('kbcms/AdminPosition/index'),
                        'name'=>'推荐位管理',
                        'iconfont'=>'&#xe62a;'
                    ),
                    array(
                        'id'=>33,
                        'url'=>url('kbcms/AdminExpand/index'),
                        'name'=>'扩展模型管理',
                        'iconfont'=>'&#xe62a;'
                    ),
                    array(
                        'id'=>34,
                        'url'=>url('kbcms/AdminForm/index'),
                        'name'=>'表单管理',
                        'iconfont'=>'&#xe62a;'
                    ),

                )
            ),
            array(
                'id'=>50,
                'url'=>'',
                'name'=>'系统',
                'iconfont'=>'&#xe646;',
                'sub'=>array(
                    array(
                        'id'=>51,
                        'url'=>url('admin/Setting/site'),
                        'name'=>'系统设置',
                        'iconfont'=>'&#xe689;'
                    ),
                    array(
                        'id'=>52,
                        'url'=>url('admin/AdminUser/index'),
                        'name'=>'后台用户',
                        'iconfont'=>'&#xe672;'
                    ),
                    array(
                        'id'=>53,
                        'url'=>url('admin/AdminUserGroup/index'),
                        'name'=>'后台用户组',
                        'iconfont'=>'&#xe668;'
                    ),
                    array(
                        'id'=>54,
                        'url'=>url('admin/User/index'),
                        'name'=>'会员管理',
                        'iconfont'=>'&#xe608;'
                    ),
                    array(
                        'id'=>55,
                        'url'=>url('admin/UserType/index'),
                        'name'=>'会员类型',
                        'iconfont'=>'&#xe630;'
                    )
                )
            ),
            array(
                'id'=>60,
                'url'=>'',
                'name'=>'插件中心',
                'iconfont'=>'&#xe637;',
                'sub'=>array(
                    array(
                        'id'=>61,
                        'url'=>'',
                        'name'=>'插件管理',
                        'iconfont'=>'&#xe62a;',
                        'sub'=>array(
                            array(
                                'id'=>611,
                                'url'=>url('plug/Plugin/index'),
                                'name'=>'插件工具',
                                'iconfont'=>'&#xe62a;',
                            )
                        )
                    )
                )
            ),
        );
	}
}

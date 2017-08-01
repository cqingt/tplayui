/*
 * @Author: Paco
 * @Date:   2017-02-07
 * +----------------------------------------------------------------------
 * | jqadmin [ jq酷打造的一款懒人后台模板 ]
 * | Copyright (c) 2017 http://jqadmin.jqcool.net All rights reserved.
 * | Licensed ( http://jqadmin.jqcool.net/licenses/ )
 * | Author: Paco <admin@jqcool.net>
 * +----------------------------------------------------------------------
 */

layui.define(['jquery', 'layer', 'ajax','element'], function(exports) {
    var ajax = layui.ajax;
    ajax.del = function(ret, options, that) {
        if (ret.status==200){//成功
            that.parent().parent('tr').remove();
            layer.msg(ret.msg, {
                icon: 1
            });
        }else{//失败
            layer.msg(ret.msg, {
                icon: 5
            });
        }
    }
    ajax.up = function(ret, options, that) {
        if (ret.status==200){//成功
            layer.msg(ret.msg, {
                icon: 1
            });
        }else{//失败
            layer.msg(ret.msg, {
                icon: 5
            });
        }
    }
    /*data.elem.checked = false;*/
    exports('default', {});
});
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid grid-userinfo">
    <%@ include file="../content/user_head.jsp" %>
    <div class="btn-link">
        <div class="collect-class"><p>0</p><p>收藏课程</p></div>
        <div class="collect-match"><p>12</p><p>收藏赛事</p></div>
    </div>
    <div class="home-info">
        <ul class="re-set">
            <li><span class="account">账&emsp;&emsp;号：&emsp;</span><span class="account-w f-toe">crcreatorcreatorcreatoreator</span>&emsp;<span><i class="fa fa-pencil"></i>&nbsp;<a>修改</a></span></li>
            <li><span class="account">手机号码：&emsp;</span><span class="account-w f-toe">13901234567 </span>&emsp;<span><i class="fa fa-pencil"></i>&nbsp;<a>修改</a></span></li>
            <li><span class="account">邮&emsp;&emsp;箱：&emsp;</span><span class="account-w f-toe">无</span>&emsp;<span><i class="fa fa-pencil"></i>&nbsp;<a>绑定</a></span></li>
            <li><span class="account">密&emsp;&emsp;码：&emsp;</span><span class="account-w f-toe">******</span>&emsp;<span><i class="fa fa-pencil"></i>&nbsp;<a>修改</a></span></li>
        </ul>
    </div>
    <div id="info-warp"></div>
</div>

<script id="base-info-show" type="text/template">
    <div></div>
    <ul class="user-info">
        <li><span class="account">昵&emsp;&emsp;称：&emsp;</span><span class="account-w "><*=name*></span></li>
        <li><span class="account">真实姓名：&emsp;</span><span class="account-w "><*=realname*></span></li>
        <li><span class="account">身份证号：&emsp;</span><span class="account-w "><*=identity*></span></li>
        <li><span class="account">性&emsp;&emsp;别：&emsp;</span><span class="account-w "><*=sex*></span></li>
        <li><span class="account">年&emsp;&emsp;龄：&emsp;</span><span class="account-w "><*=age*></span></li>
        <li><span class="account">学&emsp;&emsp;校：&emsp;</span><span class="account-w "><*=school*></span></li>
        <li>
            <span class="account"><span class="custom-letter">在所</span><span>地：&emsp;</span></span><span class="account-w"><*=address1*>&nbsp;|&nbsp;<*=address2*>&nbsp;|&nbsp;<*=address3*></span>
        </li>
    </ul>
    <a class="btn btn-success edit-info-btn f-db" onclick="render_base_info_set();">修改基本信息</a>

</script>
<script id="base-info-set" type="text/template">
    <form id="base-info-form">
        <ul class="user-info">
            <li><span class="account">昵&emsp;&emsp;称：</span><input onchange="checkData(this.name)" class="form-control f-ib" type="text" name="name" maxlength="30" value="<*=name*>"/><i class="fa fa-bolt"></i></li>
            <li><span class="account">真实姓名：</span><input onchange="checkData(this.name)" class="form-control f-ib" type="text" name="realname" maxlength="30" value="<*=realname*>"/><i class="fa fa-bolt"></i></li>
            <li><span class="account">身份证号：</span><input onchange="checkData(this.name)" class="form-control f-ib" type="number" name="identity" maxlength="18" value="<*=identity*>"/><i class="fa fa-bolt"></i></li>

            <li class="select"><span class="account">性&emsp;&emsp;别：</span>
                <select name="sex" class="form-control">
                    <option value="男"
                    <*if(sex=="男"){*>
                    selected="selected"
                    <*}*>
                    >男</option>
                    <option value="女"
                    <*if(sex=="女"){*>
                    selected="selected"
                    <*}*>
                    >女</option>
                    <option value="保密"
                    <*if(sex=="保密"){*>
                    selected="selected"
                    <*}*>
                    >保密</option>
                </select>
            </li>
            <li><span class="account">年&emsp;&emsp;龄：</span><input  onchange="checkData(this.name)" class="form-control f-ib" type="number" name="age" maxlength="3" value="<*=age*>"/><i class="fa fa-bolt"></i></li>
            <li><span class="account">学&emsp;&emsp;校：</span><input  onchange="checkData(this.name)" class="form-control f-ib" type="text" name="school" maxlength="30" value="<*=school*>"/><i class="fa fa-bolt"></i></li>
            <li class="place-info">
                <span class="account"><span class="custom-letter">在所</span><span>地：</span></span>
                <br/>省/直辖市/自治区/特区<br/>
                <input onchange="checkData(this.name)" class="f-ib form-control" type="text" name="address1" maxlength="30" value="<*=address1*>"/><i class="fa fa-bolt"></i>
                <br/>市/自治州/区<br/>
                <input onchange="checkData(this.name)" class="f-ib form-control" type="text" name="address2" maxlength="30" value="<*=address2*>"/><i class="fa fa-bolt"></i>
                <br/>/县/自治县<br/>
                <input onchange="checkData(this.name)" class="f-ib form-control" type="text" name="address3" maxlength="30" value="<*=address3*>"/><i class="fa fa-bolt"></i>
            </li>
        </ul>
        <div class="btn-group save-info-btn f-db f-cb" role="group" aria-label="...">
            <button type="button" class="btn btn-success" onclick="save_info()">保存</button>
            <button type="button" class="btn btn-info" onclick="render_base_info_show()">取消</button>
        </div>
    </form>
</script>
<script>
    var user_base_info = {
        name: "小<<<花",
        realname: "大花",
        identity: "",
        sex:      "女",
        age:      "18",
        school:   "张小花幼儿园",
        address1: "",
        address2: "北京",
        address3: "北京"
    };
</script>
<fis:require id="page/user/userinfo/home.css"/>
<fis:require id="tooljs/baiduTemplate.js"/>
<fis:require id="page/user/userinfo/user_info.js"/>

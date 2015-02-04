<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid register">
    <form>
        <ul>
            <li>
                <input class="f-ib form-control" type="text" name="phonenum" maxlength="11" placeholder="请输入用户名/邮箱/已验证的手机"/>
            </li>
            <li>
                <input class="form-control" type="password" name="password" maxlength="20" placeholder="请输入密码"/>
            </li>
            <li>
                <input class="f-ib form-control" type="text" name="authcode" maxlength="6" placeholder="请输入验证码"/><img class="auth-code f-ib" src="">
            </li>
            <li>
                <span class="checkbox f-ib">
                    <input type="checkbox" name="keep_online">
                    <div class="bg f-fl"></div>
                    <label data-on="ON" data-off="OFF"></label>
                </span>
                <span class="remenber f-ib">
                1个月内免登录
                </span>
            </li>
            <li><input class="btn btn-success" type="submit" value="登录"></li>
        </ul>
    </form>
    <div class="bottom-box">
        <div class="operate f-cb">
            <a class="reg f-fl">免费注册</a>
            <a class="find-p f-fr">找回密码</a>
        </div>
        <p class="third-way">其他方式登录:</p>
        <ul class="third-login">
            <li class="f-ib"><a><img src="img/third_login_r1_c1.png"></a></li>
            <li class="f-ib"><a><img src="img/third_login_r2_c3.png"></a></li>
            <li class="f-ib"><a><img src="img/third_login_r2_c5.png"></a></li>
        </ul>
    </div>
</div>
<fis:require id="page/login_reg/login.css"/>
<fis:require id="tooljs/fullPage.js"/>



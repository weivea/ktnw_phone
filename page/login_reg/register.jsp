<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid register">
<form>
    <ul>
        <li>
            <input class="f-ib form-control" type="text" name="authcode" maxlength="6" placeholder="请输入验证码"/><img class="auth-code f-ib" src="">
        </li>
        <li>
            <input class="f-ib  form-control" type="text" name="phonenum" maxlength="11" placeholder="请输入手机号码"/><div class="get-pass btn btn-success f-ib">获取密码</div>
        </li>
        <li>
            <input class="form-control" type="password" name="password" maxlength="20" placeholder="输入您收到的短信登录密码"/>
        </li>
        <li><input class="btn btn-success" type="submit" value="注册"></li>
    </ul>
</form>
</div>
<fis:require id="page/login_reg/register.css"/>
<fis:require id="tooljs/fullPage.js"/>

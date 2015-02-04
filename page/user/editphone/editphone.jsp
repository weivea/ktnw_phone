<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid grid-editphone">
    <%@ include file="../content/user_head.jsp" %>
    <div class="box">
        <form>
            <div class="f-cb"><input class="form-control f-fl in-short" type="text" name="authcode" maxlength="6" placeholder="请输入验证码"/><img class="auth-code f-fl" src=""></div>
            <div class="f-cb">
                <input class="form-control f-fl in-short" type="text" name="phonenum" maxlength="11" placeholder="请输入手机号"/>
                <button type="button" class="btn btn-success get-phone-auth f-fl" onclick="save_info()">获取手机验证码</button>
            </div>
            <div><input class="form-control" type="password" name="password" maxlength="20" placeholder="请输入手机验证码"/></div>
            <div><input class="btn btn-success" type="submit" value="提交"></div>
        </form>
    </div>
</div>
<fis:require id="page/user/editphone/editphone.css"/>
<fis:require id="tooljs/fullPage.js"/>

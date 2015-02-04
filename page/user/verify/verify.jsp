<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid grid-verify">
    <%@ include file="../content/user_head.jsp" %>
    <div class="box">
        <P>校验身份后修改：</P>
        <select name="verify-way" class="form-control">
            <option value="0">选择验证方式</option>
            <option value="1">已验证手机</option>
            <option value="2">已验证邮箱</option>
        </select>
        <div class="cellphone-way ways">
            <p>已验证手机:159***5557</p>
            <button type="button" class="btn btn-success" onclick="save_info()">获取短信校验码</button>
            <input  class="f-ib form-control" type="text" name="address1" maxlength="30" placeholder="请输入手机校验码"/>
            <button type="button" class="btn btn-success" onclick="save_info()">下一步</button>
        </div>
        <div class="email-way ways">
            <p>已验证邮箱:2342435**2@qq.com</p>
            <button type="button" class="btn btn-success" onclick="save_info()">发送验证邮件</button>
        </div>
    </div>
</div>
<fis:require id="page/user/verify/verify.css"/>
<fis:require id="tooljs/fullPage.js"/>
<fis:require id="page/user/verify/verify.js"/>
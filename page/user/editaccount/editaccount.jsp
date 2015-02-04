<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid grid-verify">
    <%@ include file="../content/user_head.jsp" %>
    <div class="box">
        <input  class="f-ib form-control" type="email" name="address1" maxlength="30" placeholder="请输入账号"/>
        <button type="button" class="btn btn-success" onclick="save_info()">提交</button>
    </div>
</div>
<fis:require id="page/user/editaccount/editaccount.css"/>
<fis:require id="tooljs/fullPage.js"/>

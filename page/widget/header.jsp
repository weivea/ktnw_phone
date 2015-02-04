    <%@ page contentType="text/html;charset=utf-8" %>
    <%@ taglib uri="/fis" prefix="fis"%>
<div class="head-box ">
    <div class="head up-tip f-ff1 f-toe" id="my-header">
        <c:if test="${pager!='index'}">
            <a class="f-ib back" href="${parent_url}"></a>
            <h1 class="page-title">${pager_title}</h1>
        </c:if>
        <c:if test="${pager=='index'}">
            <a class="tit f-ib"><img src="img/main_r2_c1.png"></a>
        </c:if>

        <div class="user f-ib f-fr hide">
            <a href="/to_myus.jsp"><img src="img/main_r1_c7.png"></a>
        </div>
        <c:if test="${pager!='注册' && pager!='登录'}">
            <div class="login-box f-ib f-fr ">
                <a class="login f-ib" href="/to_login.jsp">登录</a>|<a class="register f-ib" href="/to_register.jsp">注册</a>
            </div>
        </c:if>
    </div>
</div>

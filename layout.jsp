<%-- <%@ page language="java" pageEncoding="UTF-8"%> --%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<!DOCTYPE html>
<fis:html  mapDir="/map">
<head lang="en">
    <meta charset="UTF-8">
    <title>少年大学 -课堂内外</title>
    <meta name="keywords" content="少年大学，游学，冬令营，夏令营，文学院，商学院，艺术学院，科学院，国际学院"/>
    <meta name="description" content="少年大学为全国中小学生提供传统教育以外的第二课堂教育，让孩子在生活中更好的学习和理解社会"/>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta name="apple-mobile-web-app-capable" content="no" /> <!-- apple devices fullscreen -->
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta content="telephone=no" name="format-detection">
    <link rel="apple-touch-icon" href="favicon.ico">
    <link rel="icon" href="favicon.ico">
    <fis:require id="libjs/jquery-1.11.1.min.js"/>
    <fis:require id="libjs/mod.js"/>
    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>
    <fis:require id="libcss/bootstrap.min.css"/>
    <fis:require id="libcss/necStyle.css"/>
    <fis:require id="libcss/globalStyle.css"/>
    <fis:require id="libcss/fontcss/font-awesome.min.css"/>
    <%-- 使用<fis:styles/>标签显示<fis:require>标签收集到的所有css资源 --%>
    <fis:styles/>
</head>
<body class="f-ff1">
    <%@ include file="page/widget/header.jsp"%>

<c:if test="${pager=='index' || pager=='read' || pager=='activity' || pager=='match'}">
    <%@ include file="page/widget/banner.jsp"%>
</c:if>

<c:choose>
    <c:when test="${pager == 'index'}">
        <%@ include file="page/main/main.jsp"%>
    </c:when>
    <c:when test="${pager == 'read'}">
        <%@ include file="page/read/read.jsp"%>
    </c:when>
    <c:when test="${pager == 'activity'}">
        <%@ include file="page/activity/activity.jsp"%>
    </c:when>
    <c:when test="${pager == 'match'}">
        <%@ include file="page/match/match.jsp"%>
    </c:when>
    <c:when test="${pager == 'readdetail'}">
        <%@ include file="page/read/readdetail.jsp"%>
    </c:when>
    <c:when test="${pager == 'actdetail'}">
        <%@ include file="page/activity/actdetail.jsp"%>
    </c:when>
    <c:when test="${pager == 'news'}">
        <%@ include file="page/news/newslist.jsp"%>
    </c:when>
    <c:when test="${pager == 'newsdetail'}">
        <%@ include file="page/news/newsdetail.jsp"%>
    </c:when>
    <c:when test="${pager == 'userinfo'}">
        <%@ include file="page/user/userinfo/userinfo.jsp"%>
    </c:when>
    <c:when test="${pager == 'login'}">
        <%@ include file="page/login_reg/login.jsp"%>
    </c:when>
    <c:when test="${pager == 'register'}">
        <%@ include file="page/login_reg/register.jsp"%>
    </c:when>
    <c:when test="${pager == 'verify'}">
        <%@ include file="page/user/verify/verify.jsp"%>
    </c:when>
    <c:when test="${pager == 'editemail'}">
        <%@ include file="page/user/editemail/editemail.jsp"%>
    </c:when>
    <c:when test="${pager == 'editaccount'}">
        <%@ include file="page/user/editaccount/editaccount.jsp"%>
    </c:when>
    <c:when test="${pager == 'editpass'}">
        <%@ include file="page/user/editpass/editpass.jsp"%>
    </c:when>
    <c:when test="${pager == 'editphone'}">
        <%@ include file="page/user/editphone/editphone.jsp"%>
    </c:when>
    <c:when test="${pager == 'edithead'}">
        <%@ include file="page/user/edithead/edithead.jsp"%>
    </c:when>

    <c:otherwise>
        <%@ include file="page/main/main.jsp"%>
    </c:otherwise>
</c:choose>

    <%@ include file="page/widget/sidepart.jsp"%>
    <%@ include file="page/widget/footer.jsp"%>




<%-- 使用<fis:scripts/>标签显示<fis:require>标签收集到的所有js资源 --%>
<fis:scripts/>
</body>
</fis:html>
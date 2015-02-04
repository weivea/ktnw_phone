<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="sort-operate f-cb">
    <a class="sort" datatype="time">时间<span class="up-down"></span></a>
    <a class="sort" datatype="price">价格<span class="up-down"></span></a>
    <a class="sort" datatype="apply-num">报名人数<span class="down-up"></span></a>
    <a class="screen-out-btn">筛选<span></span></a>
</div>
<div class="grid">
    <ul class="body-box f-cb">
        <li class="f-fl maginr">
            <a class="f-db">
                <img src="img/aaa.jpg">
                <div class="desc"> <p class="f-toe f-db f-fl time">12月15日</p><span class="f-ib f-fr price">&yen;16666</span><span class="f-ib f-fr triangle"></span></div>
            </a>
            <h3 class="f-taj">2015年文学潜质生冬营2015年文学潜质生冬令营</h3>
        </li>
        <li class="f-fl">
            <a class="f-db">
                <img src="img/aaa.jpg">
                <div class="desc"> <p class="f-toe f-db f-fl time">12月15日</p><span class="f-ib f-fr price">&yen;16666</span><span class="f-ib f-fr triangle"></span></div>
            </a>
            <h3 class="f-taj">2015年文学潜质生冬营2015年文学潜质生冬令营</h3>
        </li>
        <li class="f-fl maginr">
            <a class="f-db">
                <img src="img/aaa.jpg">
                <div class="desc"> <p class="f-toe f-db f-fl time">12月15日</p><span class="f-ib f-fr price">&yen;16666</span><span class="f-ib f-fr triangle"></span></div>
            </a>
            <h3 class="f-taj">2015年文学潜质生冬营2015年文学潜质生冬令营</h3>
        </li>
        <li class="f-fl">
            <a class="f-db">
                <img src="img/aaa.jpg">
                <div class="desc"> <p class="f-toe f-db f-fl time">12月15日</p><span class="f-ib f-fr price">&yen;16666</span><span class="f-ib f-fr triangle"></span></div>
            </a>
            <h3 class="f-taj">2015年文学潜质生冬营2015年文学潜质生冬令营</h3>
        </li>
        <li class="f-fl maginr">
            <a class="f-db">
                <img src="img/aaa.jpg">
                <div class="desc"> <p class="f-toe f-db f-fl time">12月15日</p><span class="f-ib f-fr price">&yen;16666</span><span class="f-ib f-fr triangle"></span></div>
            </a>
            <h3 class="f-taj">2015年文学潜质生冬营2015年文学潜质生冬令营</h3>
        </li>
        <li class="f-fl">
            <a class="f-db">
                <img src="img/aaa.jpg">
                <div class="desc"> <p class="f-toe f-db f-fl time">12月15日</p><span class="f-ib f-fr price">&yen;16666</span><span class="f-ib f-fr triangle"></span></div>
            </a>
            <h3 class="f-taj">2015年文学潜质生冬营2015年文学潜质生冬令营</h3>
        </li>

    </ul>
    <div class="load-more">加载更多……</div>
</div>

<div class="cover-bg"></div>
<form class="screen-out f-ff1">
    <ul class="f-cb class-kind">
        <li class="tit">课程分类</li>
        <li><input type="radio" name="class-kind" checked="checked" value="全部" /><span>全部</span></li>
        <li><input type="radio" name="class-kind" value="在线课程" /> <span>在线课程</span></li>
        <li><input type="radio" name="class-kind" value="线下活动" /> <span>线下活动</span></li>
        <li><input type="radio" name="class-kind" value="正在报名" /> <span>正在报名</span></li>
        <li><input type="radio" name="class-kind" value="进行预告" /> <span>进行预告</span></li>
        <li><input type="radio" name="class-kind" value="往期课程" /> <span>往期课程</span></li>
    </ul>
    <ul class="f-cb knowledge">
        <li class="tit">知识领域</li>
        <li><input type="radio" name="knowledge" checked="checked" value="全部" /><span>全部</span></li>
        <li><input type="radio" name="knowledge" value="科学" /> <span>科学</span></li>
        <li><input type="radio" name="knowledge" value="艺术" /> <span>艺术</span></li>
        <li><input type="radio" name="knowledge" value="上学" /> <span>上学</span></li>
        <li><input type="radio" name="knowledge" value="文学" /> <span>文学</span></li>
        <li><input type="radio" name="knowledge" value="国际" /> <span>国际</span></li>
    </ul>
    <ul class="f-cb class-trait">
        <li class="tit">课程特点</li>
        <li><input type="radio" name="class-trait" checked="checked" value="全部" /><span>全部</span></li>
        <li><input type="radio" name="class-trait" value="出国" /> <span>出国</span></li>
        <li><input type="radio" name="class-trait" value="免费" /> <span>免费</span></li>
        <li><input type="radio" name="class-trait" value="游学" /> <span>游学</span></li>
        <li><input type="radio" name="class-trait" value="课内知识" /> <span>课内知识</span></li>
    </ul>
</form>
<fis:require id="page/activity/activity.css"/>
<fis:require id="page/sort_and_screen_out.js"/>


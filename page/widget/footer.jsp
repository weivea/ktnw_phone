<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="footer f-cb">
    <div class="phone-pc"><a class="phone f-ib act">触屏版</a><a class="pc f-ib">电脑版</a> </div>
    <div class="some-input">
        <a class="f-ib">
            <span class="f-ib">关注微博</span>
            <img src="img/icon_r1_c1.png" class="f-ib">
            <div id="weibo-Attention">
                <wb:follow-button uid="5328118945" type="red_1" width="45" height="22" ></wb:follow-button>
            </div>
        </a>
        <div class="div-line f-ib"></div>
        <a class="f-ib" onclick="document.getElementById('weixin-Attention').style.display='block';">
            <span class="f-ib">关注微信</span>
            <img src="img/icon_r1_c3.png" class="f-ib">
        </a>
        <div class="div-line f-ib"></div>
        <a class="f-ib">关于我们</a><div class="div-line f-ib"></div>
        <a class="f-ib">注册</a>
    </div>
    <div class="copy-right">渝ICP备07500517号&nbsp;课堂内外杂志有限责任公司&nbsp;版权所有</div>
    <div class="bottom"><span>www.ocedu.cn</span><a>&emsp;收藏</a><a>&emsp;分享</a></div>
</div>
<div id="weixin-Attention" onclick="document.getElementById('weixin-Attention').style.display='none';">
    <img src="img/wxerweima.png">
</div>



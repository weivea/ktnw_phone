<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid">
    <ul class="body-box f-cb">
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学重庆观音桥实验中学</a><span>01.02</span></li>
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学</a><span>01.02</span></li>
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学重庆观音桥实验中学</a><span>01.02</span></li>
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学</a><span>01.02</span></li>
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学</a><span>01.02</span></li>
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学</a><span>01.02</span></li>
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学</a><span>01.02</span></li>
        <li class="f-cb"><a>MOE文化——重庆观音桥实验中学</a><span>01.02</span></li>
    </ul>
    <div class="load-more">加载更多……</div>
</div>


<fis:require id="page/news/newslist.css"/>
<fis:require id="tooljs/stickUp.min.js"/>
<fis:script>
    $(function(){

        hengshuping();
        function hengshuping(){
            if(window.orientation==180||window.orientation==0){
                $('html').css('font-size','100%');
            }
            if(window.orientation==90||window.orientation==-90){
                $('html').css('font-size','125%');
            }
        }
        window.addEventListener("onorientationchange" in window ? "orientationchange" : "resize", hengshuping, false);
        //////////////////////////////////////////////////////
    });
</fis:script>

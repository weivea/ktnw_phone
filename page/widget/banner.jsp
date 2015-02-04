    <%@ page contentType="text/html;charset=utf-8" %>
    <%@ taglib uri="/fis" prefix="fis"%>
    <div class="banner" id="page-banner">
        <div class="f-cb page-banner">
            <div><a href=""><img src="img/banner.jpg"></a></div>
            <div><a href=""><img src="img/banner.jpg"></a></div>
            <div><a href=""><img src="img/banner.jpg"></a></div>
        </div>
    </div>
    <fis:require id="tooljs/jquery.slides.min.js"/>
    <fis:script>
        (function(){
            $('.page-banner').slidesjs({
//                width: 940,
//                height: 528,
                navigation: false,
                play: {
                    active: false,
                    auto: true,
                    interval: 4000,
                    swap: true
                }
            });
        })();
    </fis:script>
    <%@ page contentType="text/html;charset=utf-8" %>
    <%@ taglib uri="/fis" prefix="fis"%>
<div class="side-part">
    <a class="to-main f-db"><img src="img/side_r3_c1.png"></a>
    <a class="to-top f-db" onclick="$('body,html').animate({scrollTop:0});return false;"><img src="img/side_r1_c2.png"></a>
</div>
<fis:script>
    $(window).scroll(function(){if($(window).scrollTop()>20){ $('.side-part').fadeIn('slow');}else{ $('.side-part').fadeOut('slow');}});
</fis:script>
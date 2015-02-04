<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/fis" prefix="fis"%>
<div class="grid grid-edithead">

    <div class="box">
        <p>请选择图片:</p>
        <form>
            <div class="f-cb"><input id="choose-pic" class="form-control" type="file" /></div>
        </form>
        <div class="operate-box">
            <img id="pic-show" src="" alt="图片在此显示" />
            <div class="cover"></div>
            <div id="pic-box">
                <canvas id="myavatar" width="100" height="100"></canvas>
                <!--<img id="pic-head" src="" alt="图片在此显示" />-->
            </div>
            <div id="touch-pad"></div>
        </div>
        <div id="tip" class="f-cb">
            <button type="button" class="btn btn-success tip f-fl"><img src="img/tip.png"></button>
            <button type="button" class="btn btn-info rotate-btn f-fl"><i class="fa fa-repeat"></i></button>
        </div>
        <button type="button" class="btn btn-success save-head-btn" onclick="save_info()">保存</button>
    </div>
    <canvas id="myavatar2" width="500" height="500"></canvas>
</div>
<fis:require id="page/user/edithead/edithead.css"/>
<fis:require id="tooljs/jquery.touchy.min.js"/>
<fis:require id="page/user/edithead/edithead.js"/>
<fis:require id="tooljs/fullPage.js"/>

<script>

</script>



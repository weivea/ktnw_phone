;(function(){
    $("#bd_share").html('<div class="bdsharebuttonbox"><a href="#" class="bds_qzone" data-cmd="qzone"></a><a href="#" class="bds_tsina" data-cmd="tsina"></a><a href="#" class="bds_tqq" data-cmd="tqq"></a></div>');
    window._bd_share_config=
    {
        "common":{
            "bdSnsKey":{},
            "bdText":$("#bd_share").attr('data-cmd'),
            "bdMini":"2",
            "bdPic":"",
            "bdStyle":"0",
            "bdSize":"32"},
        "share":{},
        "image":{"viewList":["qzone","tsina","tqq"],
            "viewText":"分享到：",
            "viewSize":"32"}
    };
with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
})();


;(function(window){
    $('body').append(
        '<div id="uploading-bg">'+
        '<div id="uploading-line"><div id="uploading-item"></div></div>'+
        '</div>'
    );
    function show(){
        document.getElementById('uploading-bg').style.display='block';
    }
    function hide(){
        document.getElementById('uploading-bg').style.display='none';
    }
    window.uploadingWedgit = {
        show:show,
        hide:hide
    };

})(window);
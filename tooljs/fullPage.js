;(function(){
        if(($('.grid').outerHeight()+$('.head-box').outerHeight()+$('.footer').outerHeight())<$(window).height()){
            $('.grid').css('min-height',($(window).height()-$('.head-box').outerHeight()-$('.footer').outerHeight())+'px');
        }
})();
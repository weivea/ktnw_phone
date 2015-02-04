;(function(){
    var $screen_out = $('.screen-out');
    $screen_out.find("input[type='radio'][checked]").next().addClass('pitch-on');
    $screen_out.find('input').change(function() {
        //console.log($(this).attr('checked'));
        $(this).parent().parent().find('span').removeClass('pitch-on');
        $(this).next().addClass('pitch-on');
        var tmp_para=$('.screen-out').serialize();
        var my_href = window.location.href;
        if(my_href.indexOf('?')> -1){
            my_href = my_href.substring(0,my_href.indexOf('?'))+'?'+tmp_para;
        }else{
            my_href = my_href+'?'+tmp_para;
        }
        window.location.href = my_href;
    });
    $('.cover-bg').click(function(){
        $screen_out.css('left','100%');
        $('.cover-bg').fadeOut();
    });
    $('.screen-out-btn').click(function(){
        $('.cover-bg').fadeIn();
        $screen_out.css('left','25%');
    });

    initSort();
    function initSort(){
        var sorts = $('.sort-operate').find('.sort');
        var my_href = window.location.href;
        for(var cnt=0;cnt < sorts.length;cnt++){
            sorts.eq(cnt).attr('href',changeURLPar(my_href,'sort_type',sorts.eq(cnt).attr('datatype')+'-'+sorts.eq(cnt).find('span').attr('class')));
        }
    }
})();

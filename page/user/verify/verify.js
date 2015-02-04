;(function(){
    $('select[name="verify-way"]').change(function(e){
        e.preventDefault();
        if($(this).val()=='0'){
            $('.ways').fadeOut();
        }else if($(this).val()=='1'){
            $('.email-way').fadeOut(function(){
                $('.cellphone-way').fadeIn();
            });
        }else{
            $('.cellphone-way').fadeOut(function(){
                $('.email-way').fadeIn();
            });
        }
    });
})();
/**
 * Created by weijianli on 2015/1/22.
 */
    var bt=baidu.template;
    bt.LEFT_DELIMITER='<*';
    bt.RIGHT_DELIMITER='*>';
    render("base-info-show",user_base_info);
    //可以设置输出变量是否自动HTML转义
    bt.ESCAPE = true;
    function checkData(id, is_re){
    var re = false;
        var $this = $('input[name="'+id+'"]');
        if($this.val()!=null && $this.val()!=undefined && $this.val()!=''){
            $this.removeClass('my-warning');
            re=true;
        }else{
            $this.addClass('my-warning');
        }
        if($this.attr('name')=='identity'){
            if(isIdCardNo($this.val())){
                $this.removeClass('my-warning');
                re=true;
            }else{
                $this.addClass('my-warning');
            }
        }else if($this.attr('name')=='age'){
            if(!isNaN($this.val()) && parseInt($this.val())>0 && parseInt($this.val())<150){
                $this.removeClass('my-warning');
                re=true;
            }else{
                $this.addClass('my-warning');
            }
        }
        if(is_re == true){
            return re;
        }
    }

    function render(id,data){
        var info = baidu.template(id);
        document.getElementById('info-warp').innerHTML=info(data);
    }
    function render_base_info_set(){
        render('base-info-set',user_base_info);
    }
    function render_base_info_show(){
        render('base-info-show',user_base_info);
    }
    function save_info(){
        var $inputs =  $('#base-info-form').find('input');
        var length = $inputs.length;
        var flag = true;
        for(var cnt=0;cnt<length;cnt++){
            if(!checkData($inputs.eq(cnt).attr('name'), true)){
                flag = flag && false;
            }
        }
        console.log(flag);
    }
    function isIdCardNo(num) {
        num = num.toUpperCase();
        //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X。
        if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num))) {
            //alert('输入的身份证号长度不对，或者号码不符合规定！\n15位号码应全为数字，18位号码末位可以为数字或X。');
            return false;
        }else{return true;}
    }

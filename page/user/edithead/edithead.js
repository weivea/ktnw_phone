;(function(){


    //var $pic_head = $('#pic-head');
    var $operate_box = $('.operate-box');
    var $pic_box = $('#pic-box');
    var $pic_show = $('#pic-show');
    var $touch_pad = $('#touch-pad');
    //var $test = $('#test');
    var startDistance=0;
    //console.log($operate_box.width());
    $operate_box.css('width',$operate_box.width()+'px');
    var canvas = document.getElementById('myavatar');
    var canvas2 = document.getElementById('myavatar2');
    var context = canvas.getContext('2d');

    var imageObj =document.getElementById("pic-show");
    imageObj.onload = function() {
        // draw cropped image
        init_func();
    };

    var tmp_img = new Image();
    var touchy_flag=false;
    $("#choose-pic").change(function(){
        var objUrl = getObjectURL(this.files[0]) ;
        if (objUrl) {
            if(!touchy_flag){
                $touch_pad.bind('touchy-pinch', function(e, $target, data){

                    if(startDistance != data.startDistance){
                        back_scale_t=cur_scale_t;
                        startDistance = data.startDistance;
                    }
                    //$test.html('scale:'+JSON.stringify(data)+"\nback_scale_t:"+back_scale_t);
                    cur_scale_t = back_scale_t * data.scale;
                    cur_left=bili_a*2*a*cur_scale_t-a;
                    cur_top=bili_b*2*a*cur_scale_t-a;
                    back_left=cur_left;
                    back_top=cur_top;
                    $pic_show.css({'width':s_width*cur_scale_t,'height':s_height*cur_scale_t,'top':0-cur_top,'left':0-cur_left});
                    //$pic_head.css({'width':s_width*cur_scale_t,'height':s_height*cur_scale_t,'top':0-cur_top-m_t,'left':0-cur_left-m_l});
                    //sourceX =parseFloat($pic_head.css('left').substr(0,$pic_head.css('left').length-2))/cur_scale_t/cur_scale;
                    //sourceY =parseFloat($pic_head.css('top').substr(0,$pic_head.css('top').length-2))/cur_scale_t/cur_scale;
                    sourceX=(cur_left+m_l)/cur_scale_t/cur_scale;
                    sourceY=(cur_top+m_t)/cur_scale_t/cur_scale;
                    sourceWidth = 100/cur_scale_t/cur_scale;
                    sourceHeight = 100/cur_scale_t/cur_scale;
                    //sourceX =  0-parseInt(sourceX);
                    //sourceY = 0-parseInt(sourceY);
                    drowing();
                });
                $touch_pad.bind('touchy-drag', function(e, phase, $target, data){
                    // $test.html('scale:'+JSON.stringify(data));
                    cur_left_t=back_left_t+(data.startPoint.x-data.movePoint.x);
                    cur_top_t=back_top_t+(data.startPoint.y-data.movePoint.y);
                    cur_left=back_left+(data.startPoint.x-data.movePoint.x);
                    cur_top=back_top+(data.startPoint.y-data.movePoint.y);
                    if(phase=='end'){
                        back_left = cur_left;
                        back_top = cur_top;
                        back_left_t = cur_left_t;
                        back_top_t = cur_top_t;
                        //sourceX = sourceX-(data.movePoint.x-data.startPoint.x)/cur_scale;
                        //sourceY = sourceY-(data.movePoint.y-data.startPoint.y)/cur_scale;

                    }
                    bili_a=(back_left+a)/(2*a*cur_scale_t);
                    bili_b=(back_top+b)/(2*b*cur_scale_t);
                    $pic_show.css({'top':0-cur_top,'left':0-cur_left});
                    //$pic_head.css({'top':0-cur_top-m_t,'left':0-cur_left-m_l});
                    //sourceX =parseFloat($pic_head.css('left').substr(0,$pic_head.css('left').length-2))/cur_scale_t/cur_scale;
                    //sourceY =parseFloat($pic_head.css('top').substr(0,$pic_head.css('top').length-2))/cur_scale_t/cur_scale;
                    sourceX=(cur_left+m_l)/cur_scale_t/cur_scale;
                    sourceY=(cur_top+m_t)/cur_scale_t/cur_scale;
                    drowing();
                });
                touchy_flag=true;
            }


            $operate_box.css('background-size','30px 30px');
            imageObj.style.opacity=0;
            context.clearRect(0, 0, canvas.width, canvas.height);
            tmp_img.src=objUrl;
            tmp_img.onload=function(){
                drow_canvas2();
            };
        }else{
            alert("请选择图片文件！！");
        }
    });

    var cur_scale_t =1;
    var back_scale_t =1;
    var cur_left=0;
    var cur_top=0;
    var back_left=0;
    var back_top=0;
    var cur_left_t=0;
    var cur_top_t=0;
    var back_left_t=0;
    var back_top_t=0;


    var a, b,a1,b1,r_width,r_height,m_l,m_t,s_width,s_height;
    var bili_a,bili_b;
    var cur_scale =1;
    var back_scale =1;
    var init_left,init_top;
    function init_func(){
        $pic_show.css('transform','scale(1,1)');//初始化数据
        //$pic_head.css('transform','scale(1,1)');
        $pic_show.css({'width':'auto','height':'auto','top':0,'left':0});
        //$pic_head.css({'width':'auto','height':'auto','top':0,'left':0});
        cur_left=0;
        cur_top=0;
        back_left=0;
        back_top=0;
         cur_left_t=0;
         cur_top_t=0;
         back_left_t=0;
         back_top_t=0;
         cur_scale_t =1;
         back_scale_t =1;
        init_left=$operate_box.width()/2-$pic_show.width()/2;
        init_top=$operate_box.height()/2-$pic_show.height()/2;
        var real_w=$pic_show.width();
        var real_h=$pic_show.height();
        r_width = real_w;r_height = real_h;//获取图像初始宽高
        if(real_h>real_w){
            $pic_show.css('width',$operate_box.width());
            s_width=$pic_show.width();
            s_height=$pic_show.height();
            $operate_box.css({'height':$pic_show.height()});
            m_l=$operate_box.width()/2-$pic_box.width()/2;//初始$pic_show与$pic_head的相对位移
            m_t=$operate_box.height()/2-$pic_box.height()/2;
            //$pic_head.css({'width':$operate_box.width(),'left':0-m_l,'top':0-m_t});
        }else{
            $pic_show.css('height','300px');
            s_width=$pic_show.width();
            s_height=$pic_show.height();
            $operate_box.css({'height':$pic_show.height()});
            m_l=$operate_box.width()/2-$pic_box.width()/2;//初始$pic_show与$pic_head的相对位移
            m_t=$operate_box.height()/2-$pic_box.height()/2;
            //$pic_head.css({'height':'300px','left':0-m_l,'top':0-m_t});
        }

        cur_scale=($pic_show.height()/real_h+$pic_show.width()/real_w)/2;//获得初始缩放比
        back_scale=cur_scale;
        a = $operate_box.width()/2;
        b = $operate_box.height()/2;
        a1 = $pic_box.width()/2;
        b1 = $pic_box.height()/2;
        bili_a = a/$operate_box.width();//初始比例额
        bili_b = b/$operate_box.height();
        sourceX = (a/$pic_show.width()*r_width*cur_scale-a1)/cur_scale;
        sourceY = (b/$pic_show.height()*r_height*cur_scale-b1)/cur_scale;
        sourceWidth = 100/cur_scale;
        sourceHeight = 100/cur_scale;
        //console.log(sourceX);
        //console.log(sourceY);
        drowing();
        imageObj.style.opacity=1;
    }
    var sourceX,sourceY,sourceWidth,sourceHeight;
    function drowing(){
        var destWidth = 100;
        var destHeight = 100;
        var destX = 0;
        var destY = 0;
        context.drawImage(imageObj,sourceX,sourceY,sourceWidth,sourceHeight,destX,destY,destWidth,destHeight);

    }


    var degree=0;
    function drow_canvas2(){
        rotate(canvas2,tmp_img,0);
    }
    $('.rotate-btn').click(function(){
        if(tmp_img.src != ''){//已经载入图像才动作
            context.clearRect(0, 0, canvas.width, canvas.height);
            imageObj.style.opacity=0;
            setTimeout(function(){
                degree += 90;
                degree = (degree==360)?0:degree;
                rotate(canvas2,tmp_img,degree);
            },200);
        }
    });
    $('.save-head-btn').click(function(){
        if(tmp_img.src != ''){//已经载入图像才动作
            var dataurl = canvas.toDataURL("image/png");
        }
    });
    //建立一個可存取到該file的url
    function getObjectURL(file) {
        var url = null ;
        if (window.createObjectURL!=undefined) { // basic
            url = window.createObjectURL(file) ;
        } else if (window.URL!=undefined) { // mozilla(firefox)
            url = window.URL.createObjectURL(file) ;
        } else if (window.webkitURL!=undefined) { // webkit or chrome
            url = window.webkitURL.createObjectURL(file) ;
        }
        if(/^image/i.test(file.type)){//是否是图片
            return url ;
        }else{
            return false;
        }

    }

    var rotate = function(canvas,img,rot){
        //获取图片的高宽

        var w = img.width;
        var h = img.height;
        if(img.width>img.height){
            w = 1000;
            h = img.height*1000/img.width;
        }else{
            h=1000;
            w=img.width*1000/img.height;
        }
        //角度转为弧度
        if(!rot){
            rot = 0;
        }
        var rotation = Math.PI * rot / 180;
        var c = Math.round(Math.cos(rotation) * 1000) / 1000;
        var s = Math.round(Math.sin(rotation) * 1000) / 1000;
        //旋转后canvas标签的大小
        canvas.height = Math.abs(c*h) + Math.abs(s*w);
        canvas.width = Math.abs(c*w) + Math.abs(s*h);
        //绘图开始
        var context = canvas.getContext("2d");
        context.save();
        //改变中心点
        if (rotation <= Math.PI/2) {
            context.translate(s*h,0);
        } else if (rotation <= Math.PI) {
            context.translate(canvas.width,-c*h);
        } else if (rotation <= 1.5*Math.PI) {
            context.translate(-c*w,canvas.height);
        } else {
            context.translate(0,-s*w);
        }
        //旋转90°
        context.rotate(rotation);
        //绘制
        context.drawImage(img, 0, 0, img.width, img.height,0,0,w,h);
        context.restore();
        img.style.display = "none";
        var objUrl_ = canvas2.toDataURL("image/png");
        $pic_show.attr("src", objUrl_) ;
        //$("#pic-head").attr("src", objUrl_) ;
    }
})();
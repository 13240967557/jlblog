<#assign base=request.contextPath />
<html xmlns:th="http://www.thymeleaf.org" >
<head>
	<meta charset="UTF-8">

	<title>登录界面</title>
    <link href="${base}/login/css/default.css" rel="stylesheet" type="text/css" />
	<!--必要样式-->
    <link href="${base}/login/css/styles.css" rel="stylesheet" type="text/css" />
    <link href="${base}/login/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="${base}/login/css/loaders.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class='login'>
	  <div class='login_title'>
	    <span>管理员登录</span>
	  </div>
	  <div class='login_fields'>
	    <div class='login_fields__user'>
	      <div class='icon'>
	        <img alt="" src='${base}/login/img/user_icon_copy.png'>
	      </div>
	      <input name="login" placeholder='用户名' maxlength="16x" type='text' autocomplete="off" />
	        <div class='validation'>
	          <img alt="" src='${base}/login/img/tick.png'>
	        </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='${base}/login/img/lock_icon_copy.png'>
	      </div>
	      <input name="pwd" placeholder='密码' maxlength="16" type='text' autocomplete="off">
	      <div class='validation'>
	        <img alt="" src='${base}/login/img/tick.png'>
	      </div>
	    </div>
	    <div class='login_fields__password'>
	      <div class='icon'>
	        <img alt="" src='${base}/login/img/key.png'>
	      </div>
	       <input placeholder='验证码' maxlength="4" type='text' name="code" autocomplete="off">
	      <div class='validation' style="opacity: 0.7; right:-30px;top: -3px;">
           <canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
	      </div>
	    </div>
	    <div class='login_fields__submit'>
	      <input type='button' value='登录'>
	    </div>
	  </div>
	  <div class='success'>
	  </div>
	  <div class='disclaimer'>
	    <p>欢迎登陆后台管理系统</p>
	  </div>
	</div>
	<div class='authent'>
	  <div class="loader" style="height: 44px;width: 44px;margin-left: 28px;">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
        </div>
	  <p>认证中...</p>
	</div>
	<div class="OverWindows"></div>
    <link href="${base}/login/layui/css/layui.css" rel="stylesheet" type="text/css" />
	<!-- <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> -->
	<script type="text/javascript" src="${base}/login/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="${base}/login/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src='${base}/login/js/stopExecutionOnTimeout.js?t=1'></script>
    <script src="${base}/login/layui/layui.js" type="text/javascript"></script>
    <script src="${base}/login/js/Particleground.js" type="text/javascript"></script>
    <script src="${base}/login/js/Treatment.js" type="text/javascript"></script>
    <script src="${base}/login/js/jquery.mockjax.js" type="text/javascript"></script>
	<script type="text/javascript">
		var canGetCookie = 0;//是否支持存储Cookie 0 不支持 1 支持
		var ajaxmockjax = 1;//是否启用虚拟Ajax的请求响 0 不启用  1 启用

		
		var CodeVal = 0;
	    Code();
	    function Code() {
			if(canGetCookie == 1){
				createCode("AdminCode");
				var AdminCode = getCookieValue("AdminCode");
				showCheck(AdminCode);
			}else{
				showCheck(createCode(""));
			}
	    }
	    function showCheck(a) {
			CodeVal = a;
	        var c = document.getElementById("myCanvas");
	        var ctx = c.getContext("2d");
	        ctx.clearRect(0, 0, 1000, 1000);
	        ctx.font = "80px 'Hiragino Sans GB'";
	        ctx.fillStyle = "#E8DFE8";
	        ctx.fillText(a, 0, 100);
	    }
	    $(document).keypress(function (e) {
	        // 回车键事件  
	        if (e.which == 13) {
	            $('input[type="button"]').click();
	        }
	    });
	    //粒子背景特效
	    $('body').particleground({
	        dotColor: '#E8DFE8',
	        lineColor: '#133b88'
	    });
	    $('input[name="pwd"]').focus(function () {
	        $(this).attr('type', 'password');
	    });
	    $('input[type="text"]').focus(function () {
	        $(this).prev().animate({ 'opacity': '1' }, 200);
	    });
	    $('input[type="text"],input[type="password"]').blur(function () {
	        $(this).prev().animate({ 'opacity': '.5' }, 200);
	    });
	    $('input[name="login"],input[name="pwd"]').keyup(function () {
	        var Len = $(this).val().length;
	        if (!$(this).val() == '' && Len >= 5) {
	            $(this).next().animate({
	                'opacity': '1',
	                'right': '30'
	            }, 200);
	        } else {
	            $(this).next().animate({
	                'opacity': '0',
	                'right': '20'
	            }, 200);
	        }
	    });
	    var open = 0;
	    layui.use('layer', function () {
			var msgalert = '欢迎来到后台管理系统<br>请登录后操作!';
    		var index = layer.alert(msgalert, { icon: 6, time: 4000, offset: 't', closeBtn: 0, title: '友情提示', btn: [], anim: 2, shade: 0 });  
			layer.style(index, {
				color: '#777'
			}); 
			
	        //非空验证
	        $('input[type="button"]').click(function () {
	            var login = $('input[name="login"]').val();
	            var pwd = $('input[name="pwd"]').val();
	            var code = $('input[name="code"]').val();
	            if (login == '') {
	                ErroAlert('请输入您的账号');
	            } else if (pwd == '') {
	                ErroAlert('请输入密码');
	            } else if (code == '' || code.length != 4) {
	                ErroAlert('输入验证码');
	            } else {
	            	if(code.toUpperCase() != CodeVal.toUpperCase()){
	    				var data={"Status":"Erro","Erro":"验证码有误"}
	    				AjaxErro(data);
	    				return;
	    			}
	                //认证中..
	             //   fullscreen();
	                $('.login').addClass('test'); //倾斜特效
	                setTimeout(function () {
	                    $('.login').addClass('testtwo'); //平移特效
	                }, 300);
	                setTimeout(function () {
	                    $('.authent').show().animate({ right: -320 }, {
	                        easing: 'easeOutQuint',
	                        duration: 600,
	                        queue: false
	                    });
	                    $('.authent').animate({ opacity: 1 }, {
	                        duration: 200,
	                        queue: false
	                    }).addClass('visible');
	                }, 500);

	                //登陆
	                var JsonData = {"username": login, "password": pwd};
					var url = "/userlogin";
					
					
					$.post(url,JsonData, function (data) {
                        //ajax返回 
                        //认证完成
                        setTimeout(function () {
                            $('.authent').show().animate({ right: 90 }, {
                                easing: 'easeOutQuint',
                                duration: 600,
                                queue: false
                            });
                            $('.authent').animate({ opacity: 0 }, {
                                duration: 200,
                                queue: false
                            }).addClass('visible');
                            $('.login').removeClass('testtwo'); //平移特效
                        }, 2000);
                        setTimeout(function () {
                            $('.authent').hide();
                            $('.login').removeClass('test');
                            if (data.Status == 'ok') {
                                //登录成功
                                $('.login div').fadeOut(100);
                                $('.success').fadeIn(1000);
                                $('.success').html(data.Text);
							//跳转操作
                                successHD(data.url)
                            } else {
                                AjaxErro(data);
                            }
                        }, 2400);
                    });	
	
           
                           
	            }
	        })
	    })
		
	    var successHD=function(url){
	    	var num=$(".success span[id='num']").html();
	    	var timer=setInterval(function(){
	    		if(num==0){
	    			location.href=url;
	    			clearInterval(timer);
	    			return;
	    		}
	    		num-=1;
	    		$(".success span[id='num']").html(num);
	    	}, 1000);
	    }
		//body全屏代码
	    var fullscreen = function () {
	        elem = document.body;
	        if (elem.webkitRequestFullScreen) {
	            elem.webkitRequestFullScreen();
	        } else if (elem.mozRequestFullScreen) {
	            elem.mozRequestFullScreen();
	        } else if (elem.requestFullScreen) {
	            elem.requestFullscreen();
	        } else {
	            //浏览器不支持全屏API或已被禁用  
	        }
	    }  
	
    </script>
</body>
</html>

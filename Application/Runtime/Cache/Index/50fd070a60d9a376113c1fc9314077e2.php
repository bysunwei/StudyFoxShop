<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录雪狐商城</title>
<link rel="stylesheet" href="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/css/log_reg.css"/>
<script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/jquery-1.7.2.min.js"></script>

<script>
	$(function(){
		$('.text').focus(function(){
			$(this).addClass("highlight");	
			$(this).removeClass("highlight_error");
			$(".focus").removeClass("errorinfo");
			$(".focus").html("");
		})
		$('.text').blur(function(){
			$(this).removeClass("highlight");
		})
		
		$('#loginsubmit').click(function(){
			var username=$("#loginname").val();
			var password=$("#loginpwd").val();
			var authcode=$("#authcode").val();
			if(username=="")
			{
				$("#loginname").addClass('highlight_error');
				$("#loginname_error").html("请输入用户名");
				$("#loginname_error").addClass("errorinfo");	

			}
			if(password=="")
			{
				$("#loginpwd").addClass('highlight_error');
				$("#loginpwd_error").html("请输入密码");
				$("#loginpwd_error").addClass("errorinfo");	
				//return false;
			}
			if(authcode=="")
			{
				$("#authcode").addClass('highlight_error');	
				$("#authcode_error").html("请输入验证码");
				$("#authcode_error").addClass("errorinfo");	
			}
			if(username&&password&&authcode)
			{
				$.post('/index.php/Index/Login/doLogin',{'username':username,'password':password,'HCaptchaInput':authcode},function(data){
					if(data==1)
					{
						$("#loginname").addClass('highlight_error');
						$("#loginname_error").html("用户名不存在");
						$("#loginname_error").addClass("errorinfo")
					}else if(data==2)
					{
						$("#loginpwd").addClass('highlight_error');
						$("#loginpwd_error").html("密码不正确");
						$("#loginpwd_error").addClass("errorinfo")
					}else if(data==0)
					{
						$("#authcode").addClass('highlight_error');
						$("#authcode_error").html("验证码不正确");
						$("#authcode_error").addClass("errorinfo")
					}else
					{
						window.location="/index.php/admin";
					}	
				})
			}
		})
	})
</script>
</head>

<body>
	<div class="w">
    	<div class="logo">
        	<a href="<?php echo U('index/index');?>"><img src="/Public/themes/default/images/logo.png" alt="雪狐" width="216" height="60" /></a>
            <span></span>
        </div>
        <form method="post" id="formlogin"> 
        	<div class="entry">
            	<div class="mc">
                	<div style="width:402px; height:354px; background:url(/Public/themes/default/upload/8.jpg); float:left"></div>
                    	<div class="forminf">
                    		<div class="item">
                            	<span>用户名</span>
                            	<div class="info">
                                	<input class="text" type="text" id="loginname" tabindex="1"/>
                                    <span class="icon i_name"></span>
                                    <label id="loginname_error" class="focus"></label>
                                </div>
                            </div>
                            <div class="item">
                            	<span>密码</span>
                            	<div class="info">
                                	<input class="text" type="password" id="loginpwd" tabindex="2"/>
                                    <span class="icon i_pwd"></span>
                                    <label id="loginpwd_error" class="focus"></label>
                                </div>
                            </div>
                              <div class="item">
                            	<span>验证码</span>
                            	<div class="info">
                                	<input class="text text_code" type="text" id="authcode" tabindex="3"/>
                                    <label class="img"><img id="authcode" style="cursor:pointer; width:100px; height:33px;" title="点击刷新" src="https://api.hinsite.com/index.php?u=hcaptcha&s=home&k=a692613ace7a5910bfd2052f3adc5881&sid=" onclick="this.src='https://api.hinsite.com/index.php?u=hcaptcha&s=home&k=a692613ace7a5910bfd2052f3adc5881&sid='" /></label>
                                	<label class="hline">看不清？<br /><a href="###" onclick="">换一张</a></label>
                                    <label id="authcode_error" class="focus"></label>
                                </div>
                            </div>
                            <div class="item fore4">
                            	<div class="info">
                                	<input class="checkbox" type="checkbox" id="chkRemember" tabindex="4"/>
                                    <label class="mar" for="chkRemember">自动登录</label>
                                    <label><a href="###">忘记密码</a></label>
                                </div>
                            </div>
                            <div class="item login">
                      	    	<input class="btn_login" type="button" id="loginsubmit" tabindex="5"/>
                            </div>
                             <div class="item ">
                      	    	<label class="loginmore">使用合作网站账号登录雪狐商城</label>
                            	<ul class="clear">
                                	<li><a>QQ</a></li>
                                    <li><a>新浪微博</a></li>
                                    <li><a>网易</a></li>
                                    <li><a>人人</a></li>
                                    <li><a>奇虎360</a></li>
                                    <li><a>开心</a></li>
                                    <li class="border_none"><a>豆瓣</a></li>
                                </ul>
                            </div>
                        <div>
                    </div>
                </div>
            </div>
            <div class="free_regist">
            	<span><a href="<?php echo U('regist/index');?>">免费注册&gt;&gt;</a></span>
            </div>
        	</div>
        </form>
        <div class="space">  
        	<div class="mb"></div>
        </div>
        <ul id="footer">
        	<li><a href="###" target="_blank">关于我们</a>|</li>
            <li><a href="###" target="_blank">联系我们</a>|</li>
            <li><a href="###" target="_blank">人才招聘</a>|</li>
            <li><a href="###" target="_blank">广告服务</a>|</li>
            <li><a href="###" target="_blank">手机雪狐</a>|</li>
            <li><a href="###" target="_blank">友情链接</a>|</li>
            <li><a href="###" target="_blank">雪狐社区</a>|</li>
            <li><a href="###" target="_blank">雪狐公益</a></li>
        </ul>
        <p class="copyright">Copyright&nbsp;&nbsp;2015&nbsp;&nbsp;雪狐商城&nbsp;&nbsp;&nbsp;版权所有</p>
    </div>
</body>
</html>
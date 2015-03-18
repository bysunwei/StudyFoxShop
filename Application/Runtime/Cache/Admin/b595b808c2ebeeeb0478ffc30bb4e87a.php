<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>雪狐商城后台</title>

<link href="/Public/dwz/themes/default/style.css" rel="stylesheet" type="text/css" />
<link href="/Public/dwz/themes/css/core.css" rel="stylesheet" type="text/css" />
<link href="/Public/dwz/themes/css/extcore.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link href="/Public/dwz/themes/css/ieHack.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script src="/Public/dwz/js/speedup.js" type="text/javascript"></script>
<script src="/Public/dwz/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="/Public/dwz/js/jquery.cookie.js" type="text/javascript"></script>
<script src="/Public/dwz/js/jquery.validate.js" type="text/javascript"></script>
<script src="/Public/dwz/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="/Public/xheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
<script src="/Public/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="/Public/dwz/js/dwz.min.js" type="text/javascript"></script>
<script src="/Public/dwz/js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
function fleshVerify(){
	//重载验证码
	$('#verifyImg').attr("src", '/index.php/Admin/Public/verify/'+new Date().getTime());
}
function dialogAjaxMenu(json){
	dialogAjaxDone(json);
	if (json.statusCode == DWZ.statusCode.ok){
		$("#sidebar").loadUrl("/index.php/Admin/Public/menu");
	}
}
function navTabAjaxMenu(json){
	navTabAjaxDone(json);
	if (json.statusCode == DWZ.statusCode.ok){
		$("#sidebar").loadUrl("/index.php/Admin/Public/menu");
	}
}
$(function(){
	DWZ.init("/Public/dwz/dwz.frag.xml", {
		loginUrl:"/index.php/Admin/Public/login_dialog", loginTitle:"登录",	// 弹出登录对话框
//		loginUrl:"/index.php/Public/login",	//跳到登录页面
		statusCode:{ok:1,error:0},
		keys:{statusCode:"status", message:"info"},
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"_order", orderDirection:"_sort"}, //【可选】
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"/Public/dwz/themes"});
			
		}
	});
});
</script>
</head>

<body scroll="no">
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<div class="logo"><a href="">雪狐商城后台</a></div>
				<ul class="nav">
					<li class="first"><a href="/index.php" target="_blank" >商城首页</a></li>
					<li><a href="/index.php/Admin/Public/password/" target="dialog" mask="true">修改密码</a></li>
					<li><a href="/index.php/Admin/Public/profile/" target="dialog" mask="true">修改资料</a></li>
					<li><a href="/index.php/Admin/Public/logout/">退出</a></li>
				</ul>
				<ul class="themeList" id="themeList">
					<li theme="default"><div class="selected">蓝色</div></li>
					<li theme="green"><div>绿色</div></li>
					<li theme="purple"><div>紫色</div></li>
					<li theme="silver"><div>银色</div></li>
					<li theme="azure"><div>天蓝</div></li>
				</ul>
			</div>
		</div>
		
		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			
			<div id="sidebar">
				<div class="toggleCollapse">
                    <h2>主菜单</h2>
                    <div>收缩</div>
                </div>
					
<div class="accordion" fillSpace="sideBar">
	<div class="accordionHeader">
		<h2><span>Folder</span>会员管理</h2>
	</div>
	<div class="accordionContent">
		<ul class="tree treeFolder" >
        	<li><a href="/index.php/Admin/user/index" target="navTab" rel="user_index" fresh:true>会员列表</a></li>
            <!--<li><a href="/index.php/Admin/user/rank" target="navTab">会员等级</a></li>-->
        <ul>
	</div>
    <div class="accordionHeader">
		<h2><span>Folder</span>权限管理</h2>
	</div>
	<div class="accordionContent">
		<ul class="tree treeFolder" >
        	<li><a href="/index.php/Admin/AuthRule/index" target="navTab" rel="authrule_index">规则管理</a></li>
            <li><a href="/index.php/Admin/AuthGroup/index" target="navTab" rel="authgroup_index">用户组管理</a></li>
        <ul>
	</div>
    <div class="accordionHeader">
		<h2><span>Folder</span>商品管理</h2>
	</div>
	<div class="accordionContent">
		<ul class="tree treeFolder" >
        	<li><a href="/index.php/Admin/goods/index" target="navTab" rel="good_index">商品管理</a></li>
            <li><a href="/index.php/Admin/publicattr/index" target="navTab" rel="publicattr_index">公共属性管理</a></li>
            <li><a href="/index.php/Admin/private/index" target="navTab" rel="privateattr_index">私有属性管理</a></li>
        <ul>
	</div>
    <div class="accordionHeader">
		<h2><span>Folder</span>首页管理</h2>
	</div>
	<div class="accordionContent">
		<ul class="tree treeFolder" >
        	<li><a href="/index.php/Admin/floor/index" target="navTab" rel="floor_index">楼层分类管理</a></li>
        <ul>
	</div>
</div>

			</div>
		</div>

		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:void(0)"><span><span class="home_icon">我的主页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:void(0)">我的主页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="accountInfo">
							<p><span>StudyIMShop 管理中心</span></p>
                            <p>欢迎您 <?php echo (session('username')); ?>,超级管理员。<a style="color:#0080ff; margin:-1px 0 0 10px;" href="###" target="_blank">最新版StudyIMShop 点击查看详细 &gt;&gt;</a></p>
						</div>
                        <div class="pageContent" layoutH="260">
                        	<div class="panelBar pbtitle">订单统计信息</div>
                            <div class="grid">
                            	<div class="gridTbody">
                                	<table class="list" style="width:100%">
                                    	<tbody>
                                           <tr>
                                                <td width="25%">待发货订单：</td>
                                                <td width="25%">3</td>
                                                <td width="25%">未确认订单：</td>
                                                <td width="25%">2</td>
                                            </tr>
                                            <tr>
                                                <td width="25%">待支付订单：</td>
                                                <td width="25%">10</td>
                                                <td width="25%">已成交订单：</td>
                                                <td width="25%">211</td>
                                            </tr>
                                            <tr>                                                            
                                                <td width="25%">缺货登记：</td>
                                                <td width="25%">2</td>
                                                <td width="25%"></td>
                                                <td width="25%"></td>
                                            </tr>
                                        </tbody>       
                                    </table>
                                </div> 
                            </div>
                        	<div class="panelBar pbtitle">商品统计信息</div>
                             <div class="grid">
                            	<div class="gridTbody">
                                	<table class="list" style="width:100%">
                                    	<tbody>
                                           <tr>
                                                <td width="25%">商品总数：</td>
                                                <td width="25%">3</td>
                                                <td width="25%">库存警告商品数：</td>
                                                <td width="25%">2</td>
                                            </tr>
                                            <tr>
                                                <td width="25%">新品推荐数：</td>
                                                <td width="25%">10</td>
                                                <td width="25%">精品推荐数：</td>
                                                <td width="25%">211</td>
                                            </tr>
                                            <tr>                                                            
                                                <td width="25%">热销商品数：</td>
                                                <td width="25%">2</td>
                                                <td width="25%">促销商品数：</td>
                                                <td width="25%">22</td>
                                            </tr>
                                        </tbody>       
                                    </table>
                                </div> 
                            </div>
                        	<div class="panelBar pbtitle">系统信息</div>
                             <div class="grid">
                            	<div class="gridTbody">
                                	<table class="list" style="width:100%">
                                    	<tbody>
                                        <?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if(($mod) == "0"): ?><tr>
                                                <td width="25%"><?php echo ($key); ?>：</td>
                                                <td width="25%"><?php echo ($vo); ?></td><?php endif; ?>
                                        <?php if(($mod) == "1"): ?><td width="25%"><?php echo ($key); ?>：</td>
                                                <td width="25%"><?php echo ($vo); ?></td>
                                            </tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>
              							<?php if($infonum == 1): ?><td width="25%"></td>
                                            	<td width="25%"></td>        
                                        	</tr><?php endif; ?>
                                        </tbody>       
                                    </table>
                                </div> 
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="footer">
	<a href="###">雪狐网</a>版权所有&copy; <?php echo (C("StudyIMShop_VERSION")); ?> &nbsp;雪狐商城2013-2014 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客服电话 0730-8689288
</div>
</body>
</html>
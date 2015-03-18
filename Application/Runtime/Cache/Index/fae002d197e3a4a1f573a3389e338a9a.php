<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>雪狐ThinkPHP商城系统</title>
<link rel="stylesheet" type="text/css" href="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/css/main.css" />
<link href="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/css/lrtk.css" rel="stylesheet"  type="text/css" />



<script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/jquery.superslide.2.1.1.js"></script><!--导航幻灯片-->
<script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/scrollpic.js"></script>		<!--导航滚动幻灯片-->
<script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/base.js"></script>			<!--楼层标签切换-->
<script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/lib.js"></script>			<!--楼层标签切换-->
<script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/MSClass.js"></script>		<!--四格幻灯片-->
</head>


<body>
	<div id="shortcut">
    	<div class="w">
        	<ul class="lh">
            	<li><span></span>收藏雪狐商城</li>
            </ul>
            <ul class="lr">
            	<li>
                您好，欢迎来到雪狐商城！
                <a href="<?php echo U('login/index');?>">[登录]</a>
                <a href="<?php echo U('regist/index');?>">[免费注册]</a>
                </li>
                <li><s></s>我的订单</li>
            </ul>
        </div>
    </div>
    <!--shortcut end-->
    <div id="header">  
    	<div id="header-top" class="w clear">
        	<div id="logo" class="lh">
            	<img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/images/header_logo.png" alt="雪狐商城">
            </div>
            <!--logo end-->
            <div id="search-top">
            	<div class="search-form clear">
            		<input type="input" class="text" />    
           			<input value="搜 索" type="button" class="button" />
                </div>         
               <ul id="hotwords">
                	<li class="one"><strong>热门搜索：</strong></li>
                    <li><a href="###" target="_blank" style="color:red">校园之星</a></li>
                    <li><a href="###" target="_blank">礼品卡</a></li>
                    <li><a href="###" target="_blank">四件套</a></li>
                    <li><a href="###" target="_blank">九阳</a></li>
                    <li><a href="###" target="_blank">行车记录仪</a></li>
                    <li><a href="###" target="_blank">LG</a></li>
                    <li><a href="###" target="_blank">G2</a></li>
                    <li><a href="###" target="_blank">考研大纲</a></li>
                </ul>
            </div>
            <!--search-top end-->
          	<ul class=" box lr">
           		<li id="mystudyim" class="lh">
            		<span></span><a href="###">我的雪狐</a><b></b>
            	</li>
       	     	<li id="shoppingcart" class="lh">
            		<span>1</span><a href="###">去购物车结算</a><b></b>
           		</li>
            </ul>
        </div>
    </div>
    <!--header end-->
    <div id="nav">
    	<div class="w">
        	<div id="category" >
            	<div class="mt lh">
                	<a href="###">全部商品分类</a>
                </div>
                <div class="mc">
                	<?php if(is_array($category)): $k = 0; $__LIST__ = $category;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><div class="item"  <?php if($k == 1): ?>onMouseOver="this.className='item hover fore1'"  onMouseOut="this.className='item fore1'"<?php else: ?>onMouseOver="this.className='item hover '"  onMouseOut="this.className='item'"<?php endif; ?>  >
                    	<h3><a href="##"><?php echo ($vo["cat_name"]); ?></a><s></s></h3>
                        <div class="i-mc">
                        	<div class="close" onClick="this.parentNode.parentNode.className='item'">×</div>
                        	<div class="subitem">
                            	<?php if(is_array($vo['subitem'])): $i = 0; $__LIST__ = $vo['subitem'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub): $mod = ($i % 2 );++$i;?><dl class="fore1 clear" >
                                	<dt><a href="#"><?php echo ($sub["cat_name"]); ?></a></dt>
                                    <dd><?php echo (getcatname($sub["id"])); ?></dd>
                                </dl><?php endforeach; endif; else: echo "" ;endif; ?>
                            </div>
                            <div class="cat-right">
                            	<dl class="category-promotions clear">
                                	<dd>
                                    	<ul class="clear">
                                        	<?php if(is_array($vo['ad'])): $i = 0; $__LIST__ = $vo['ad'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$subad): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($subad["ad_link"]); ?>" target="_blank"><img width="194" height="70" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/<?php echo ($subad["ad_img"]); ?>" title="<?php echo ($subad["ad_name"]); ?>"></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                                        </ul>
                                    </dd>
                                </dl>
                                <dl class="category-brands clear">
                                	<dt>推荐品牌</dt>
                                	<ul>
                                    <?php if(is_array($vo['brand'])): $i = 0; $__LIST__ = $vo['brand'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$brand): $mod = ($i % 2 );++$i;?><li class="li_1 li_2"><a href="<?php echo ($brand["brand_url"]); ?>" target="_blank"><?php echo ($brand["brand_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                                    </ul>
                                </dl>
                            </div>
                        </div>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>  
                </div>
            </div>
            <ul id="navitens">
            	<li class="current"><a>首页</a></li>
                <?php if(is_array($nav)): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
        </div>
    </div>
	<!--nav end-->
    <div class="w clear">
    	<div id="o-slide">
        	<div class="slide">
                <ul class="51buypic">
                	<?php if(is_array($ad)): $i = 0; $__LIST__ = $ad;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($advo["ad_link"]); ?>" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/<?php echo ($advo["ad_img"]); ?>" /></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
             
                <div class="num">
                    <ul></ul>
                </div>
                      <script>
            /*鼠标移过，左右按钮显示*/
            $(".slide").hover(function(){
                $(this).find(".prev,.next").fadeTo("show",0.1);
            },function(){
                $(this).find(".prev,.next").hide();
            })
            /*鼠标移过某个按钮 高亮显示*/
            $(".prev,.next").hover(function(){
                $(this).fadeTo("show",0.7);
            },function(){
                $(this).fadeTo("show",0.1);
            })
            $(".slide").slide({ titCell:".num ul" , mainCell:".51buypic" , effect:"fold", autoPlay:true, delayTime:1000 , autoPage:true });
            </script>
            </div>
      		<!--slide end-->
            <div id="mscroll">
  				<div class="ctrl" id="mscroll-ctrl-prev"><b></b></div>
                <div class="ctrl" id="mscroll-ctrl-next"><b></b></div>
            	<div class="o-list">
                	<div class="list" id="rollphoto1">
                  		<ul>
                        <?php if(is_array($adscroll)): $i = 0; $__LIST__ = $adscroll;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$voscroll): $mod = ($i % 2 );++$i;?><li class="item">
                            <a href="<?php echo ($voscroll["ad_link"]); ?>" target="_blank"><img width="202" height="159" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/<?php echo ($voscroll["ad_img"]); ?>"></a>
                            </li><?php endforeach; endif; else: echo "" ;endif; ?>
                		</ul>
                    </div>
                </div>
            </div>
            <script language=javascript type=text/javascript>
                var scrollPic_01 = new ScrollPic();
                scrollPic_01.scrollContId   = "rollphoto1"; //内容容器ID
                scrollPic_01.arrLeftId      = "mscroll-ctrl-prev";//左箭头ID
                scrollPic_01.arrRightId     = "mscroll-ctrl-next"; //右箭头ID
                if (screen.width >= 1280){scrollPic_01.frameWidth     = 609;}else{scrollPic_01.frameWidth     = 488;}
                if (screen.width >= 1280){scrollPic_01.pageWidth      = 609;}else{scrollPic_01.pageWidth      = 488;}
                scrollPic_01.speed          = 5; //移动速度(单位毫秒，越小越快)
                scrollPic_01.space          = 10; //每次移动像素(单位px，越大越快)
                scrollPic_01.autoPlay       = true; //自动播放
                scrollPic_01.autoPlayTime   = 3; //自动播放间隔时间(秒)
                scrollPic_01.initialize(); //初始化
            </script>
            <!--mscroll end-->
        </div>
        <!--幻灯片 滚动幻灯片结束-->
       <div id="rand">
            <a href="<?php echo ($adrand["link"]); ?>" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/<?php echo ($adrand["ad_img"]); ?>"></a>
        </div>
        <!--随机广告 end-->
        <div class="m" id="studyimnews">
        	<div class="mt">
            	<h3>雪狐快报</h3>
                <div class="extra"><a href="#" target="_blank">更多快报&nbsp;&gt;</a></div>
            </div>
            <div class="mc">
            	<ul>
                <?php if(is_array($article)): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$voarticle): $mod = ($i % 2 );++$i;?><li class="<?php echo ($mod?'':'odd'); ?>"><a href="<?php echo ($voarticle["article_link"]); ?>" target="_blank"><?php echo ($voarticle["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>
        <!--雪狐快报 end-->
        <!--雪狐首发 begin-->
        <div id="studyimfirst" class="m">
        	<div class="mt">
            	<h3>雪狐首发</h3>
            </div>
            <div class="mc">
            	<div class="item">
                	<div>
                    	<div class="p-img"><a href="##" target="_blank"><img width="100" height="100" alt="" src="../../../../public/themes/default/upload/firstpublish001.jpg"></a></div>
                        <div class="p-title"><a href="#" target="###">方太全新一代风魔方</a></div>
                        <div class="p-detail">
                        方太全新一代风魔方，从此不怕炒辣椒。完美黄金控烟区，防止油烟逃逸，吸烟绝对给力。新品首发，直降1190元，重磅加赠价值558元阿里斯顿小厨宝，买得高端霸气，省钱省力气！
                        </div>
                    </div>
                </div>
            </div>
        </div>
   		<!--雪狐首发 end-->
    </div>
 	<!--全部商品楼层 begin-->
    <div id="floors-list">
        <!--单层begin-->
        <?php if(is_array($floor)): $key1 = 0; $__LIST__ = $floor;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$floorlist): $mod = ($key1 % 2 );++$key1;?><div class="w w1">
        	<!--楼层左侧 begin-->
            <div class="m m1 catalogue">
                <div class="mt ld">
                    <div class="floor">
                        <b class="b b1" ></b>
                        <b class="b b2" ></b>
                        <b class="b b3"><?php echo ($key1); ?>F</b>
                        <b class="b4"></b>
                    </div> 
                <h2><?php echo ($floorlist["name"]); ?></h2>
                </div>
                <div class="mc">
                	<div class="style1">
                    	<ul class="lh">
                        	<?php if(is_array($floorlist['sub_cat'])): $i = 0; $__LIST__ = $floorlist['sub_cat'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub_left): $mod = ($i % 2 );++$i; if($sub_left["position"] == 1): ?><li><a href="/index.php/Index/list/index/id/<?php echo ($sub_left["url"]); ?>"><?php echo ($sub_left["name"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                        </ul>
                        <span><a href="###" target="_blank"><img width="209" height="155" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_left.jpg"></a></span>
                    </div>
                </div>
            </div>
        	<!--楼层左侧 end-->
            <!--楼层中间 begin-->
            <div class="m plist">
            	<div class="tab-arrow"><b></b></div>
            	<?php if(is_array($floorlist['sub_cat'])): $key2 = 0; $__LIST__ = $floorlist['sub_cat'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub_middle): $mod = ($key2 % 2 );++$key2;?><!--中间第一列 begin-->
                <?php if($sub_middle["position"] == 2 AND $sub_middle["name"] == '特价商品'): ?><div class="sm fore1 curr" data-widget="tab-item">
                	<div class="smt">
                    	<h3><?php echo ($sub_middle["name"]); ?></h3>
                    </div>
                    <div class="smc" data-widget="tab-content">
     					<!--四格幻灯片 begin-->              
                    	<div class="slide">
                        	<div id="SlideMidFrame<?php echo ($key1); ?>" class="slide-itemswrap">
                            	<div id="SlideMidContent<?php echo ($key1); ?>" class="slide-item">
                                	<div><a href="###" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_1.jpg" width="473" height="180"></a></div>
                                    <div><a href="###" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2.jpg" width="473" height="180"></a></div>
                                   	<div><a href="###" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_3.jpg" width="473" height="180"></a></div>
                                    <div><a href="###" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_4.jpg" width="473" height="180"></a></div>
                                </div>
                            </div>
                            <div id="SlideMidBtn<?php echo ($key1); ?>" class="slide-controls">
                            	<span class="active"><b></b></span>
                                <span class=""><b></b></span>
                                <span class=""><b></b></span>
                                <span class=""><b></b></span>
                            </div>
                        </div>
                        <script type="text/javascript">
						new Marquee(
						  {
							  MSClassID :  "SlideMidFrame<?php echo ($key1); ?>",
							  ContentID :  "SlideMidContent<?php echo ($key1); ?>",
							  TabID :  "SlideMidBtn<?php echo ($key1); ?>",
							  Direction : 2,
							  Step : 0.2,
							  Width : 473,
							  Height : 180,
							  Timer : 20,
							  DelayTime : 0,
							  WaitTime : 600000,
							  ScrollStep: 0,
							  SwitchType: 0,
							  AutoStart : 1
						  });
                        </script>
                        <!--四格幻灯片 end--> 
                    	<!--幻灯片周围U形广告-->
                        <ul class="lh style1">
                        	<li class="fore1">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public//themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_u_1.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">品牌贺新春，放价来过年</a></div>
                                <div class="p-price"><span>￥3299.00</span></div>
                            </li>
                            <li class="fore2">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public//themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_u_2.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">优酷土豆路由宝</a></div>
                                <div class="p-price"><span>一款能赚钱的路由器</span></div>
                            </li>
                                <li class="fore3">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public//themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_u_3.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">十度扩音器开春特惠！</a></div>
                                <div class="p-price"><span>极低风暴，爆款59元起！</span></div>
                            </li>
                                <li class="fore4">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public//themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_u_4.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">美高 G3手持无线投影仪 随时随地看电影 野营必备</a></div>
                                <div class="p-price"><span>￥1789.00</span></div>
                            </li>
                                <li class="fore5">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public//themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_u_5.gif" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">开年大促，火力全开，比1折更逆天！！抢疯了！</a></div>
                                <div class="p-price"><span>1元疯抢秒杀！</span></div>
                            </li>
                                <li class="fore6">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public//themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_u_6.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">春雷行动！是你换显示器的时候啦！</a></div>
                                <div class="p-price"><span>“每”满99-9元！</span></div>
                            </li>
                                <li class="fore7">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public//themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_u_7.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">台式机满千减百，火力全开！</a></div>
                                <div class="p-price"><span>极低风暴来袭！</span></div>
                            </li>
                        </ul>
                        <!--幻灯片周围U形广告-->
                    </div>
                 </div>
                <?php elseif($sub_middle["position"] == 2 AND $sub_middle["name"] != '特价商品'): ?>
                  <!--中间第二列-->
            	 <div class="sm fore<?php echo ($key+1); ?>" data-widget="tab-item">
                	<div class="smt">
                    	<h3><?php echo ($sub_middle["name"]); ?></h3>
                    </div>
                     <div class="smc" data-widget="tab-content">
     					<!--幻灯片周围U形广告 begin-->
                        <ul class="lh style2">
                        	<li class="fore1">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_<?php echo ($key2); ?>_1.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">品牌贺新春，放价来过年</a></div>
                                <div class="p-price"><span>￥3299.00</span></div>
                            </li>
                            <li class="fore2">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_2.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">优酷土豆路由宝</a></div>
                                <div class="p-price"><span>一款能赚钱的路由器</span></div>
                            </li>
                                <li class="fore3">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_3.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">十度扩音器开春特惠！</a></div>
                                <div class="p-price"><span>极低风暴，爆款59元起！</span></div>
                            </li>
                                <li class="fore4">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_4.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">美高 G3手持无线投影仪 随时随地看电影 野营必备</a></div>
                                <div class="p-price"><span>￥1789.00</span></div>
                            </li>
                                <li class="fore5">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_5.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">开年大促，火力全开，比1折更逆天！！抢疯了！</a></div>
                                <div class="p-price"><span>1元疯抢秒杀！</span></div>
                            </li>
                                <li class="fore6">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_6.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">春雷行动！是你换显示器的时候啦！</a></div>
                                <div class="p-price"><span>“每”满99-9元！</span></div>
                            </li>
                            <li class="fore7">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_7.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">台式机满千减百，火力全开！</a></div>
                                <div class="p-price"><span>极低风暴来袭！</span></div>
                            </li>
                            <li class="fore8">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_8.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">宏碁台式机全场每千减百，500封顶</a></div>
                                <div class="p-price"><span>￥3399.00</span></div>
                            </li>
						 	<li class="fore9">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_9.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">宏碁台式机全场每千减百，500封顶</a></div>
                                <div class="p-price"><span>￥3399.00</span></div>
                            </li>
                             <li class="fore10">
                            	<div class="p-img">
                                <a href="#" target="_blank">
                                <img width="100" height="100" alt="品牌贺新春，放价来过年" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_mid_2_10.jpg" >
                                </a>
                                </div>
                                <div class="p-name"><a href="####" target="_blank">宏碁台式机全场每千减百，500封顶</a></div>
                                <div class="p-price"><span>￥3399.00</span></div>
                            </li>
                     	
                        </ul>
                        <!--幻灯片周围U形广告 end-->              
                    </div>
                 </div>
              	  <!--中间第二列--><?php endif; ?>
                <!--楼层中间 end--><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <!--楼层中间 end-->
            <!--楼层右侧品牌 begin-->
            <div class="sm sm1 brands">
                	<div class="smt"></div>
                    <div class="smc">
                    	<ul class="lh">
                        	<li class="fore1"><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_1.jpg"></a></li>
                       		<li class="fore2"><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_2.jpg"></a></li>
                      		<li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_3.jpg"></a></li>
                            <li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_4.jpg"></a></li>
                            <li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_5.jpg"></a></li>
                            <li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_6.jpg"></a></li>
                            <li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_7.jpg"></a></li>
                            <li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_8.jpg"></a></li>
                            <li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_9.jpg"></a></li>
                            <li><a href="##" target="_blank"><img width="98" height="35" alt="" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_10.jpg"></a></li>
                        </ul>
                    </div>
                </div>
            <!--楼层右侧品牌 end-->
            <!--楼层右侧广告 begin-->
            <div class="fr_ad">
            	<div class="slide">
                	<div id="SlideRigFrame<?php echo ($key1); ?>_r" class="slide-itemswrap">
                    	<div id="SlideRigContent<?php echo ($key1); ?>_r" class="slide-item">
                    		<div><a href="###" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_ad_1.jpg" width="209" height="180" alt=""></a></div>
                            <div><a href="###" target="_blank"><img src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/upload/1floor_rig_ad_2.jpg" width="209" height="180" alt=""></a></div>
                   		</div>
                    </div>
                 	<div id="SlideRigBtn<?php echo ($key1); ?>_r" class="slide-controls">
                    	<span class="active"><b></b></span>
                        <span><b></b></span>
                    </div>
                </div>
            </div>
             <script type="text/javascript">
						new Marquee(
						  {
							  MSClassID :  "SlideRigFrame<?php echo ($key1); ?>_r",
							  ContentID :  "SlideRigContent<?php echo ($key1); ?>_r",
							  TabID :  "SlideRigBtn<?php echo ($key1); ?>_r",
							  Direction : 2,
							  Step : 0.2,
							  Width : 209,
							  Height : 180,
							  Timer : 20,
							  DelayTime : 0,
							  WaitTime : 600000,
							  ScrollStep: 0,
							  SwitchType: 0,
							  AutoStart : 1
						  });
                        </script>
            <!--楼层右侧广告 end-->
            </div><?php endforeach; endif; else: echo "" ;endif; ?>
    	<!--单层end-->
    </div>
    <script type="text/javascript" src="/Public/themes/<?php echo (C("DEFAULT_THEME")); ?>/js/slide.js"></script>
    <!--全部商品楼层end-->
</body>
</html>
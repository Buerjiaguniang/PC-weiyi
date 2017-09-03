<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="texthtml; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="images/logo.svg" rel="shortcut icon" type="image/x-icon" />

<script src="js/jquery-1.11.3.min.js" type="text/javascript" data-library="jquery" data-version="1.11.3"></script>
<script src="js/jssor.slider-22.0.7.mini.js" type="text/javascript" data-library="jssor.slider.mini" data-version="22.0.7"></script>
<style>
            .wrap {
                margin-top: 150px;
                perspective: 840px;
                perspective-origin: 50% 50%;
              
                background-size: 100px 180px;
                border-top: solid 0px #6699cc;
                border-bottom: solid 0px #6699cc;
                /* Background stripes animation */
                animation: bganim 3s linear 2s infinite;
            }

            @keyframes bganim {
                from {
                    background-position: 0px;
                }

                to {
                    background-position: 80px;
                }
            }

            .cube {
                margin: auto;
                position: relative;
                height: 200px;
                width: 200px;
                transform-style: preserve-3d;
            }

                .cube div {
                    position: absolute;
                    padding: 10px;
                    box-sizing: border-box;
                    height: 100%;
                    width: 100%;
                    opacity: 0.9;
                    background-color: #000;
                    border: solid 1px #eee;
                    color: #fff;
                    font: 10px arial;
                    transition: transform 0.2s ease-in;
                }

            .front {
                background:url(images/make01.jpg);
                transform: translateZ(100px);
            }

            .back {
                background:url(images/flower/flower04.png);
                transform: translateZ(-100px) rotateY(180deg);
            }

            .right {
                background:url(images/fruit/production1-3.jpg);
                transform: rotateY(-270deg) translateX(100px);
                transform-origin: top right;
            }

            .left {
                background:url(images/Hipchips/Hipchips03.jpg);
                transform: rotateY(270deg) translateX(-100px);
                transform-origin: center left;
            }

            .top {
                background:url(images/flower/flower04.png);
                transform: rotateX(-270deg) translateY(-100px);
                transform-origin: top center;
            }

            .bottom {
                background:url(images/make02.jpg);
                transform: rotateX(270deg) translateY(100px);
                transform-origin: bottom center;
            }
            /* inner cube */
            i{
              position:absolute;
              top:50px;
              left:50px;
              width:100px;
              height:100px;
              display:block;
              background:url(images/fruit/production1-2.jpg);
              transition: all 1s linear;
            }
            i.i_front{
              transform: translateZ(50px);
            }
            i.i_back{
              transform: translateZ(-50px) rotateY(180deg);
            }
            i.i_bottom{
              transform:rotateX(-90deg) translateY(50px);
              transform-origin: left bottom;
            }
            i.i_left{
              transform:rotateY(270deg) translateX(-50px);
              transform-origin: center left;
            }
            i.i_right{
              transform:rotateY(-270deg) translateX(50px);
              transform-origin: top right;
            }
            i.i_top{
              transform:rotateX(-270deg) translateY(-50px);
              transform-origin: left top;
            }

            @keyframes rotate {
                from {
                    transform: rotateX(0deg) rotateY(0deg);
                }

                to {
                    transform: rotateX(360deg) rotateY(360deg);
                }
            }

            .cube {
                animation: rotate 20s infinite linear;
            }

            .wrap:hover .front {
                transform: translateZ(200px);
            }

            .wrap:hover .back {
                transform: translateZ(-200px) rotateY(180deg);
            }

            .wrap:hover .right {
                transform: rotateY(-270deg) translateZ(100px) translateX(100px);
            }

            .wrap:hover .left {
                transform: rotateY(270deg) translateZ(100px) translateX(-100px);
            }

            .wrap:hover .top {
                transform: rotateX(-270deg) translateZ(100px) translateY(-100px);
            }

            .wrap:hover .bottom {
                transform: rotateX(270deg) translateZ(100px) translateY(100px);
            }
        </style>
<title>唯一</title>
</head>

<body>
<a name="top"></a>
<!--回到顶部-->
<!--顶端导航栏-->
<div id="header">
      <div id="header-left">
            <ul>
				<li><a href="pc-mainpage.jsp" target="_parent">首页</a></li><div class="line"></div
				><li><a href="pc-mainpage.jsp" target="_parent">商家中心</a></li><div class="line"></div
				><li><a href="lay.html" target="_blank">平台政策</a></li><div class="line"></div
				><li><a href="javascript:void(0)" id="a1">唯一手机版</a></li>
	       </ul>
      </div>
      <div id="erweima">
          <img src="images/ewm.png" />
      </div>
     <div id="header-right">
       
           <div id="header-right-a">
               <span>欢迎来到唯一商城</span>
               <ul>
               <c:choose>
               		<c:when test="${empty userName }">
	                    <li><a href="login.jsp" target="_parent">登录</a></li><div class="line"></div>
	                    <li><a href="html/zhuce.html" target="_parent">注册</a></li>
               		</c:when>
               		<c:otherwise>
               			<li><a href="#">你好，${ userName }</a></li><div class="line"></div>
               			<li><a href="login.jsp">退出登录</a></li><div class="line"></div>
               		</c:otherwise>
               </c:choose>
               </ul>
           </div>
           <div id="header-right-b">
                      <li><a href="html/shopping-cart.html" target="_blank">个人中心</a></li>
                <!-- <ul> 
                     <li><a href="MyOrder.html" target="_blank">我的订单</a></li>
				     <li><a href="Profile.html" target="_blank">个人设置</a></li> 
		        </ul>--> 
             <div id="header-right-b-b">
                      <li><a href="html/shopping-cart.html" target="_blank">购物车</a></li> 
                 </div>  
       </div>
  </div>
</div><!--header顶端导航条-->

<!--菜单栏-->
<div id="spry">
     <div id="spry-left">
         <img src="images/bt.jpg" />
     </div>
     <div id="spry-right" >
        <ul>
            <li><a href="pc-mainpage.jsp" target="_parent">首&nbsp;页</a></li><div class="line"></div>
            <li><a href="html/gift.html" target="_parent">礼&nbsp;盒</a></li><div class="line"></div>
            <li><a href="html/flower.html" target="_parent">鲜&nbsp;花</a></li><div class="line"></div>
            <li><a href="html/cookie.html" target="_parent">曲&nbsp;奇</a></li><div class="line"></div>
            <li><a href="html/fruit.html" target="_parent">鲜&nbsp;果</a></li><div class="line"></div>
            <li><a href="html/talk.html" target="_blank">联系客服</a></li>
        </ul>
     </div>
</div><!--spry-->

<div id="banner">
    <div class="htmleaf-container">
		<header class="htmleaf-header">
			 
		</header>
		
        
	        <div class="wrap">
	            <div class="cube">
	                <div class="front">
	                    <h2>Front side</h2>
	                </div>
	                <div class="back">
	                    <h2>Back side</h2>
	                </div>
	                <div class="top">
	                    <h2>Top side</h2>
	                </div>
	                <div class="bottom">
	                    <h2>Bottom side</h2>
	                </div>
	                <div class="left">
	                    <h2>Left side</h2>
	                </div>
	                <div class="right">
	                    <h2>Right side</h2>
	                </div>
				
	                <i class="i_front"></i>
	                <i class="i_back"></i>
	                <i class="i_top"></i>
	                <i class="i_bottom"></i>
	                <i class="i_left"></i>
	                <i class="i_right"></i>
					
	            </div> <!--cube end-->
	        </div> <!--wrap end-->      
	    
	</div><!--htmleaf-container end-->
	<ul class="banner-des">
		<li>手工制造</li>
		<li>指定唯一收货人</li>
		<li>顺丰速递</li>
		<li>全品类包邮</li>
		</ul>
 </div><!--banner-->

<!-- 公告 -->
<div id="new">
   <div id="article">
		<a target="_blank" href="news.html">更多原创文章&gt; &gt;</a>
    </div>
    <div id="article-about">
        <img src="images/new1-1.jpg" />&nbsp;
        <a target="_blank" href="http://china.ynet.com/3.1/1612/24/12180282.html">王菲演唱会几近崩盘</a>
        <span>唯一&nbsp;&nbsp;&nbsp;2016-12-24</span> 
    </div>
    <div id="article-aboutnews">
                王菲演唱会门票票价从炒至百万到跌穿票面价，价高量少饥饿营销观众不买账<a target="_blank" href="http://china.ynet.com/3.1/1612/24/12180282.html">阅读全文 &gt; </a>
    </div>
		 
	
</div><!--new-->

<!--商品类-->
<div id="contain">
      <div id="contain-new-goods">
      <div class="banner-des"><h1>圣诞新品区>></h1> </div>
      </div>
      <div id="hot">
            <div id="newest">
              <a target="_parent" href="html/gift.html"><img src="images/lh/hgn.jpg" alt="" /></a>
            </div>
            <div id="sale-many">
                <a target="_parent" href="html/flower.html"><img src="images/flower/flower07.jpg" alt="" /></a>
            </div>
            <div id="new-store">
                <a target="_parent" href="html/goods.html"><img src="images/Hipchips/Hipchips01.jpg" alt="" /></a>
                <div id="transbox">
                    <p>
                    薯片，一直以来都是深受人们喜爱的零食之一。在前不久，英国的 SoHo 区就开了一家名为 Hipchips 的店，它号称是伦敦第一家薯片专门店。Hipchips 把薯片当做主食，店内也只提供这一种食物和酒水,这家要“给予薯片尊重”的餐厅，主打“Fresh Crisps,Fresh Dips,Fresh Traditions”。为了保证新鲜度，唯一保证同城一小时送达。
                    </p>
               </div>
            </div>
            <div id="onclick-many">
                <a target="_parent" href="html/cookie.html"><img src="images/qx/qx1.png" alt="" /></a>
            </div>        
      </div><!--hot-->
      <div id="box">
           <div id="box-menu">
             <!--   <img src="images/礼盒系列.jpg"/>-->
               <div class="banner-des">
                  <h1>订制礼盒>></h1>
               </div>
           </div>
           <div id="box-goods">
                <div id="box-goods1-1">
                    <a target="_parent" href="html/goods.html"><img src="images/lh/production1-1.jpg" alt="" /></a>
                    <p>拉菲尔进口零食礼盒</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥1314.00</h2>
                </div>
                 <div id="box-goods1-2">
                    <a target="_parent" href="html/goods.html"><img src="images/lh/production1-2.jpg" alt="" /></a>
                    <p>少女心礼盒</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥799.00</h2>
                </div>
                 <div id="box-goods1-3">
                    <a target="_parent" href="html/goods.html"><img src="images/lh/production1-5.jpg" alt="" /></a>
                    <p>进口水果国岛礼盒</p>
                    <h2>圣诞新品&nbsp;&nbsp;&nbsp;￥699.00</h2>
                </div>
                <div id="box-goods1-4">
                    <a target="_parent" href="html/goods.html"><img src="images/lh/production1-4.jpg" alt="" /></a>
                    <p>花花世界礼盒</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥1999.00</h2>
                </div>
           </div>
      </div><!--box-->
      
      <div id="flower">
           <div id="flower-menu">
                <div class="banner-des">
                  <h1>Flower>></h1>
               </div>
           </div>
            <div id="flower-goods1-1">
                    <a target="_parent" href="html/goods.html"><img src="images/flower/production1-1.png" alt="" /></a>
                    <p>红玫瑰</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥108.00</h2>
           </div>
           <div id="flower-goods1-2">
                    <a target="_parent" href="html/goods.html"><img src="images/flower/production1-2.jpg" alt="" /></a>
                    <p>绣球</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥149.00</h2>
           </div> 
           <div id="flower-goods1-3">
                    <a target="_parent" href="html/goods.html"><img src="images/flower/production1-3.jpg" alt="" /></a>
                    <p>洋桔梗</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥189.00</h2>
           </div> 
           <div id="flower-goods1-4">
                    <a target="_parent" href="html/goods.html"><img src="images/flower/production1-4.jpg" alt="" /></a>
                    <p>乒乓菊</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥88.00</h2>
           </div>
           <div id="flower-goods1-5">
                    <a target="_parent" href="html/goods.html"><img src="images/flower/production1-5.jpg" alt="" /></a>
                    <p>缤纷世界</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥599.00</h2>
           </div>       
      </div><!--flower-->
      
      <div id="cookie">
           <div id="cookie-menu">
                <div class="banner-des">
                  <h1>Cookie>></h1>
               </div>
           </div>
            <div id="cookie-goods1-1">
                    <a target="_parent" href="html/goods.html"><img src="images/qx/production1-1.jpg" alt="" /></a>
                    <p>手工樱花蔓越莓饼包月（每周一配送）</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥258.00</h2>
           </div>
           <div id="cookie-goods1-2">
                    <a target="_parent" href="html/goods.html"><img src="images/qx/production1-2.jpg" alt="" /></a>
                    <p>瓜仁曲奇礼盒</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥1314.00</h2>
           </div>
           <div id="cookie-goods1-3">
                    <a target="_parent" href="html/goods.html"><img src="images/qx/production1-3.jpg" alt="" /></a>
                    <p>蔓越莓曲奇包月</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥899.00</h2>
           </div>
           <div id="cookie-goods1-4">
                    <a target="_parent" href="html/goods.html"><img src="images/qx/production1-4.jpg" alt="" /></a>
                    <p>小世界集合界</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥248.00</h2>
           </div>
           <div id="cookie-goods1-5">
                    <a target="_parent" href="html/goods.html"><img src="images/qx/production1-5.jpg" alt="" /></a>
                    <p>曲奇集锦盒</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥249.00</h2>
           </div>
      </div><!--cookie系列-->
      
      <div id="fruit">
           <div id="fruit-menu">
                <div class="banner-des">
                  <h1>进口鲜果>></h1>
               </div>
           </div>
           <div id="fruit-goods1-1">
                    <a target="_parent" href="html/goods.html"><img src="images/fruit/production1-3.jpg" alt="" /></a>
                    <p>智利车厘子4盒 顺丰速递</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥598.00</h2>
           </div>
           <div id="fruit-goods1-2">
                    <a target="_parent" href="html/goods.html"><img src="images/fruit/production1-1.jpg" alt="" /></a>
                    <p>泰国蛇皮果 顺丰速递</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥138.00</h2>
           </div>
           <div id="fruit-goods1-3">
                    <a target="_parent" href="html/goods.html"><img src="images/fruit/production1-2.jpg" alt="" /></a>
                    <p>美国蓝莓 顺丰速递</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥289.00</h2>
           </div>
      </div><!--fruit系列-->     
</div><!--contain-->

<!--尾部-->
<div id="footer">
             <div class="footer-menu">
                   <ul>
                       <li><a href="about.html" target="_blank">关于唯一</a></li>
                       <li><a href="about.html" target="_blank">加入唯一</a></li>
                       <li><a href="about.html" target="_blank">联系我们</a></li>
                       <li><a href="about.html" target="_blank">官方微博</a></li>
                  </ul>
              <p>weiyi.com版权所有<br /><br />联系我们：0668-888888</p>   
            </div>
            <div class="footer-erweimaA">
                 <img src="images/ewm.png" />
                 <p>扫面二维码下载</p>
                 <p>唯一手机版</p>
            </div>
            <div class="footer-erweimaB">
                 <img src="images/gzewm.jpg" />
                 <p>扫面二维码关注</p>
                 <p>唯一官方微信</p>
            </div>
</div><!--footer-->

<script>
	$('#a1').hover(function(){
		console.log("a");
		$('#erweima').fadeToggle();
	})
</script>
<a href="#top" style="display:block; width:35px; height:42px; border:1px solid #000; position:fixed; right:20px; bottom:20px; background:red; color:#FFF;text-decoration:none">回到<br />顶部</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="texthtml; charset=UTF-8">
<link href="../css/flower-style.css" rel="stylesheet" type="text/css" />
<link href="../images/logo.svg" rel="shortcut icon" type="image/x-icon" />
<script src="../js/jquery-1.11.3.min.js" type="text/javascript" data-library="jquery" data-version="1.11.3"></script>
<script src="../js/jssor.slider-22.0.7.mini.js" type="text/javascript" data-library="jssor.slider.mini" data-version="22.0.7"></script>

<title>唯一</title>
</head>

<body>
<a name="top"></a>
<!--回到顶部-->
<!--顶端导航栏-->
<div id="header">
      <div id="header-left">
            <ul>
				<li><a href="../pc-mainpage.jsp" target="_parent">首页</a></li><div class="line"></div
				><li><a href="../pc-mainpage.jsp" target="_parent">商家中心</a></li><div class="line"></div
				><li><a href="lay.html" target="_blank">平台政策</a></li><div class="line"></div
				><li><a href="javascript:void(0)" id="a1">唯一手机版</a></li>
	       </ul>
      </div>
      <div id="erweima">
          <img src="../images/ewm.png" />
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
                      <li><a href="shopping-cart.html" target="_blank">个人中心</a></li>
                
             <div id="header-right-b-b">
                      <li><a href="shopping-cart.html" target="_blank">购物车</a></li> 
                 </div>  
       </div>
  </div>
</div><!--header顶端导航条-->

<!--菜单栏-->
<div id="spry">
     <div id="spry-left">
         <img src="../images/bt.jpg" />
     </div>
     <div id="spry-right" >
        <ul>
            <li><a href="../pc-mainpage.jsp" target="_parent">首&nbsp;页</a></li><div class="line"></div>
            <li><a href="gift.html" target="_parent">礼&nbsp;盒</a></li><div class="line"></div>
            <li><a href="flower.html" target="_parent">鲜&nbsp;花</a></li><div class="line"></div>
            <li><a href="cookie.html" target="_parent">曲&nbsp;奇</a></li><div class="line"></div>
            <li><a href="fruit.html" target="_parent">鲜&nbsp;果</a></li><div class="line"></div>
            <li><a href="talk.html" target="_blank">联系客服</a></li>
        </ul>
     </div>
</div><!--spry-->

<div id="banner">
     <div class="banner-image">
     
       <img src="../images/banner3.jpg" />
    </div>
    
	<ul class="banner-des">
		<li>手工制造</li>
		<li>指定唯一收货人</li>
		<li>顺丰速递</li>
		<li>全品类包邮</li>
		</ul>
</div><!--banner-->
	
</div><!--new-->

<!--商品类-->
<div id="contain">
      <div id="contain-new-goods">
      <div class="banner-des"><h1>十月区>></h1> </div>
      </div>
      <div id="lihe">
              <div class="lihe-october-1">
                    <a target="_parent" href="goods.html"><img src="../images/qx/production1-1.jpg" alt="" /></a>
                    <p>手工樱花蔓越莓包月（每周一配送）</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥258.00</h2>
              </div>
              <div class="lihe-october-2">
                    <a target="_parent" href="goods.html"><img src="../images/qx/production1-2.jpg" alt="" /></a>
                    <p>瓜仁曲奇礼盒</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥1314.00</h2>
              </div>
              <div class="lihe-october-3">
                    <a target="_parent" href="goods.html"><img src="../images/qx/production1-3.jpg"alt="" /></a>
                    <p>蔓越莓曲奇包月</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥899.00</h2>
              </div>
            
      </div><!--hot-->
      <div id="box">
          
           <div id="box-goods">
              
           </div>
      </div><!--box-->
      
      <div id="flower">
           <div id="flower-menu">
                <div class="banner-des">
                  <h1>十一月区>></h1>
               </div>
           </div>
           <div class="November">
           <div class="lihe-october-1">
                    <a target="_parent" href="goods.html"><img src="../images/qx/production1-4.jpg"alt="" /></a>
                    <p>小世界集合界</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥248.00</h2>
              </div>
              <div class="lihe-october-2">
                    <a target="_parent" href="goods.html"><img src="../images/qx/production1-5.jpg"alt="" /></a>
                    <p>曲奇集锦盒</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥249.00</h2>
              </div>
              <div class="lihe-october-3">
                    <a target="_parent" href="goods.html"><img src="../images/qx/hds.jpg" alt="" /></a>
                    <p>蝴蝶酥</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥128.00</h2>
              </div>
              </div>
           
      </div><!--flower-->
      
      <div id="cookie">
           <div id="cookie-menu">
                <div class="banner-des">
                  <h1>十二月区>></h1>
               </div>
           </div>
            <div class="December">
           <div class="lihe-october-1">
                    <a target="_parent" href="goods.html"><img src="../images/qx/hqx.jpg" alt="" /></a>
                    <p>黄油原味手工曲奇</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥567.00</h2>
              </div>
              <div class="lihe-october-2">
                    <a target="_parent" href="goods.html"><img src="../images/qx/mqx.jpg" alt="" /></a>
                    <p>抹茶芝士夹心曲奇</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥566.00</h2>
              </div>
              <div class="lihe-october-3">
                    <a target="_parent" href="goods.html"><img src="../images/qx/sgxrrqx.jpg" alt="" /></a>
                    <p>手工杏仁软曲奇</p>
                    <h2>新品上市&nbsp;&nbsp;&nbsp;￥468.00</h2>
              </div>
              </div>
           
      </div><!--cookie系列-->
      
      <div id="fruit">
     
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
                 <img src="../images/ewm.png" />
                 <p>扫面二维码下载</p>
                 <p>唯一手机版</p>
            </div>
            <div class="footer-erweimaB">
                 <img src="../images/gzewm.jpg" />
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="texthtml; charset=UTF-8">
<title>唯一商城--会员登录</title>
	<link rel="stylesheet" href="css/login.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="shortcut icon" href="images/logo.svg" type="image/x-icon" />
</head>
	
<body>
<div  id="banner"><a href="pc-mainpage.jsp" target="_blank"><img src="images/biaoti.png" width="296" height="108" /></a> <hr /></div>

<div id="contain">
   <p>每一个细节的勾勒都只为给你最好的</p>
   <img src="images/login/login1.jpg"  />
</div>

<div class="login">
	<form action="loginServlet" mothed="post">
	用户名:<input type="text" name="username" class="form-control"><br />
	密&nbsp;&nbsp;码:<input type="text" name="password" class="form-control"/><br />
	<button type="submit" class="btn btn-default" id="button_blue" >登录</button>
	<button type="button"  style="margin-left:50px;" class="btn btn-default" id="button_blue" onclick="window.open('register.jsp','_self');">注册</button>
	</form>
</div>
<hr />
</body>
</html>

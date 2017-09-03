<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="business.NewBusiness" %>
<%@ page import="java.util.Vector"%>
<%@ page import="db.New"%>
<%@ page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="images/2.jpg">
	<%
	    Vector<New> News =(Vector<New>)session.getAttribute("selectnew");
	%>
	<div class="news">
		<form action="addNew.jsp" method="post">
			<label>点击按钮添加新闻:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="submit" value="submit">添加新闻</button>
		</form>
	</div>
	<div class="table">
<table border="10" cellpadding="10" cellspacing="0" align="center" style="border-collapse:collapse">
	<tr>
	<th>新闻ID</th>
	<th>新闻标题</th>	
	<th>新闻作者</th>
	<th>新闻简介</th>
	<th>新闻链接</th>
	<th>发布日期</th>
	<th>新闻图片</th>
	<th>修改新闻</th>
	<th>删除新闻</th>
	</tr>
	<% 
		for(New n : News) {
	%>
     <tr>
		<td><%= n.getN_id() %></td>
		<td><%= n.getN_title() %></td>
		<td><%= n.getN_author() %></td>
		<td><%= n.getN_content() %></td>
		<td><%= n.getN_link() %></td>
		<td><%= n.getN_date() %></td>
		<td><img src="<%= n.getN_pic().substring(1) %>" width="50" height="50"></td>
		<td><a href="updatenewServlet?n_id=<%= n.getN_id() %>">修改</a></td>
		<td>
		<a href="deletenewServlet?n_id=<%= n.getN_id() %>">删除</a>
		</td>	
	</tr>
<%
	   } 
%>
</table>
</div>
</body>
</html>
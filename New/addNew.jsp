<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="GB2312"%>
<%@ page import="business.NewBusiness" %>
<%@ page import="db.New"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>Insert title here</title>
</head>
<body background="images/2.jpg">
	<div class="news">	
		<form method="post" action="uploadServlet" enctype="multipart/form-data">
     		请选择一个文件:
     		<input type="file" name="uploadFile"/>
     		<br/><br/>
     		<input type="submit" value="上传"/>
		</form>
		<form action="addnewServlet"  method="post" >
		<%
			String n_pic=(String)session.getAttribute("picPath");
			System.out.println(n_pic);
		%>
		<fieldset > 
		<legend>添加新闻信息</legend> 
			<table width=100% > 
				<tr><td class="left" width=50% align="right">新闻标题：</td> 
				<td><input type="text" name="n_title"/></td> 
				</tr> 
 
				<tr><td class="left" width=50% align="right">新闻作者：</td> 
				<td> <input type="text" name="n_author"/></td> 
				</tr>

				<tr><td class="left" width=50% align="right">新闻内容：</td> 
				<td> <input type="text" name="n_content"/></td> 
				</tr>

				<tr><td class="left" width=50% align="right">新闻链接：</td> 
				<td> <input type="text" name="n_link"/></td> 
				</tr>
				<tr><td class="left" width=50% align="right">发布日期：</td> 
				<td> <input type="text" name="n_date"/></td> 
				</tr>

				<tr><td class="left" width=50% align="right">新闻图片：</td> 
				<td> <input type="text" name="n_pic" value="<%=n_pic%>"/></td> 
				</tr>
				
				<tr><td class="left" width=40% align="right" rowspan=2> 
				<input type="submit"  value="修改" /></td> 
				<td> <input type="reset" value="重 置" /> </td> 
				</tr> 
			</tbody> 
		</table> 
	</fieldset> 
	</form> 
</div> 
</body> 
</html> 

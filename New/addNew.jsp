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
     		��ѡ��һ���ļ�:
     		<input type="file" name="uploadFile"/>
     		<br/><br/>
     		<input type="submit" value="�ϴ�"/>
		</form>
		<form action="addnewServlet"  method="post" >
		<%
			String n_pic=(String)session.getAttribute("picPath");
			System.out.println(n_pic);
		%>
		<fieldset > 
		<legend>����������Ϣ</legend> 
			<table width=100% > 
				<tr><td class="left" width=50% align="right">���ű��⣺</td> 
				<td><input type="text" name="n_title"/></td> 
				</tr> 
 
				<tr><td class="left" width=50% align="right">�������ߣ�</td> 
				<td> <input type="text" name="n_author"/></td> 
				</tr>

				<tr><td class="left" width=50% align="right">�������ݣ�</td> 
				<td> <input type="text" name="n_content"/></td> 
				</tr>

				<tr><td class="left" width=50% align="right">�������ӣ�</td> 
				<td> <input type="text" name="n_link"/></td> 
				</tr>
				<tr><td class="left" width=50% align="right">�������ڣ�</td> 
				<td> <input type="text" name="n_date"/></td> 
				</tr>

				<tr><td class="left" width=50% align="right">����ͼƬ��</td> 
				<td> <input type="text" name="n_pic" value="<%=n_pic%>"/></td> 
				</tr>
				
				<tr><td class="left" width=40% align="right" rowspan=2> 
				<input type="submit"  value="�޸�" /></td> 
				<td> <input type="reset" value="�� ��" /> </td> 
				</tr> 
			</tbody> 
		</table> 
	</fieldset> 
	</form> 
</div> 
</body> 
</html> 
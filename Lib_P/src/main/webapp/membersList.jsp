<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
</head>
<body>
	Home > 등록 회원 관리
	<hr>
	<table border="1">
	<% 
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		String u_phone = request.getParameter("u_phone");
		String u_mail = request.getParameter("u_mail");
		String u_sex = request.getParameter("u_sex");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT id, passwd, name, phone, mail, sex FROM members");
		
		String str = "";
		int count = 1;
		
		out.print("<tr>");
		out.print("<th>" + "No" + "</th>" + "<th>" + "ID" + "</th>" + "<th>" + "PW" + "</th>" + "<th>" + "NAME" + "</th>" + "<th>" + "삭제" + "</th>");
		out.print("</tr>");
		
		while(rs.next()){
			out.print("<tr>");
			out.print("<td>" + count + "</td>");
			out.print("<td>" + rs.getString("id") + "</td>");
			out.print("<td>" + rs.getString("passwd") + "</td>");
			out.print("<td>" + rs.getString("name") + "</td>");
			%>
			<td align="center">
				<a href="drawCheck.jsp?u_id=<%= rs.getString("id") %>"> X
				</a>
			</td>
			<%
			out.print("</tr>");
			count++;
		}
		out.print(str);	
		rs.close();
		sm.close();
		conn.close();	
	%>
	<hr>
	</table>
	<table border="0">
		<tr>
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value=" 메인 메뉴로 돌아가기 " >
				</form>
			</td>	
		</tr>
	</table>  		
</body>
</html>	
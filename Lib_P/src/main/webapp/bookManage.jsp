<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Management</title>
</head>
<body>
	Home > 서적 관리
	<hr>
	<table border="1">
	<% 
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT title, author, borrow FROM books");
		String check = "";
        String input[] = new String[3];
		
		String str = "";
		int count = 1;
		
		out.print("<tr>");
		out.print("<th>" + "No" + "</th>" + "<th>" + "Title" + "</th>" + "<th>" + "Author" + "</th>" + "<th>" + "Borrow" + "</th>" + "<th>" + "삭제" + "</th>");
		out.print("</tr>");
		
		while(rs.next()){
			out.print("<tr>");
			out.print("<td>" + count + "</td>");
			out.print("<td>" + rs.getString("title") + "</td>");
			out.print("<td>" + rs.getString("author") + "</td>");
			out.print("<td>" + rs.getString("borrow") + "</td>");
			%>
			<td align="center">
				<a href="drawCheck_b.jsp?u_id=<%= rs.getString("title") %>"> X
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
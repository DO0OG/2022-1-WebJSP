<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Page</title>
</head>
<body>
	Home > 유저 페이지
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
		out.print("<th>" + "No" + "</th>" + "<th>" + "Title" + "</th>" + "<th>" + "Author" + "</th>" + "<th>" + "Rental Status" + "</th>" + "<th>" + "대여" + "</th>");
		out.print("</tr>");
		
		while(rs.next()){
            input[0] = rs.getString("title");
            input[1] = rs.getString("author");
            if(rs.getString("borrow") == null) {
            	input[2] = "대여 가능";
            }
            else if(rs.getString("borrow") != null) {
            	input[2] = "대여 불가능";
            }
			out.print("<tr>");
			out.print("<td>" + count + "</td>");
			out.print("<td>" + rs.getString("title") + "</td>");
			out.print("<td>" + rs.getString("author") + "</td>");
			out.print("<td>" + input[2] + "</td>");
			%>
			<td align="center">
				<input type="checkbox" name="" value="borrow">
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
				<form action="borrow.jsp" method="post">
					<input type="submit" value=" 대여 " >
				</form>
			</td>	
			<td>
				<form action="main.jsp" method="post">
					<input type="submit" value=" 메인 메뉴로 돌아가기 " >
				</form>
			</td>	
		</tr>
	</table>  	
</body>
</html>
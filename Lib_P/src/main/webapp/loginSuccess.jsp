<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 유저 로그인 </title>
</head>
<body>
	Home > 유저 로그인
	<hr>
	<%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		String d_id;
		String d_pw;
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT id, passwd FROM members");
		while(rs.next()){
			if(u_id.equals(rs.getString("id")) && u_pw.equals(rs.getString("passwd")))
			{
				session.setAttribute("memberId", u_id);
				session.setAttribute("memberPw", u_pw);
				response.sendRedirect("userPage.jsp");
				
				out.println("새로운 세션 생성 성공 ! <br>");
				out.println("[ " + u_id + " ]님이 입장하였습니다. <p>");
			}
			else if(!u_id.equals(rs.getString("id")) || !u_pw.equals(rs.getString("passwd")))
			{
				out.println("로그인 실패 ! <br>");
				out.println("ID 혹은 PASSWORD를 확인해주세요.");
				break;
			}
		}
		rs.close();
		sm.close();
		conn.close();	
	%>
	<table border="0">
		<tr>
			<td>
				<form action="u_login.jsp" method="post" >
					<input type="submit" value=" 로그인 " >
				</form>
			</td>
			<td>
				<form action="main.jsp" method="post" >
					<input type="submit" value=" 메인으로 " >
				</form>
			</td>
	</table>  		
</body>
</html>
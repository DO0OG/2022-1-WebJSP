<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
</head>
<body>
	<center>
	<img src="bg.png" width="400" height="300">
	<p>
	<table border="0">
		<tr>
			<td>
				<form action="admin_login.jsp" method="post">
					<input type="submit" value=" ◀ 관리자 접속하기 ">
				</form>
			</td>
			<td>
				<form action="u_login.jsp" method="post">
					<input type="submit" value=" 사용자 접속하기 ">
				</form>
			</td>
			<td>
				<form action="SignUp.jsp" method="post">
					<input type="submit" value=" 사용자 회원가입 ▶">
				</form>
			</td>
	</tr>
	</table>
	</center>
</body>
</html>
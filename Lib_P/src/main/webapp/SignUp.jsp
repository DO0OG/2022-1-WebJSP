<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sing Up</title>
	<script type="text/javascript">
		function f_check()	//작성완료 버튼을 누를 시 내용 검사
		{
			var d = document.u_info;
			
			if(d.u_id.value.length==0)
			{
				alert("Enter ID.");
				d.u_id.focus();
				return false;
			}
			if(d.u_pw.value.length==0)
			{
				alert("Enter Password.");
				d.u_pw.focus();
				return false;
			}
			if(d.u_pw.value!=d.u_pw_c.value)
			{
				alert("Check Password.");
				d.u_pw_c.focus();
				return false;
			}
			if(d.u_name.value.length==0)
			{
				alert("Enter Name.");
				d.u_name.focus();
				return false;
			}
			if(d.u_phone.value.length==0)
			{
				alert("Enter Phone Number.");
				d.u_phone.focus();
				return false;
			}
			if(d.u_mail.value.length==0)
			{
				alert("Enter Mail Address.");
				d.u_mail.focus();
				return false;
			}
			if(document.getElementByName('u_sex').checked = false)
			{
				alert("Choose Your Gender.");
				return false;
			}
		}
	</script>
</head>
<body>
	TEST PAGE(SIGN UP)
	<hr>
	<div align="center">
	<form action="insertDB.jsp" name="u_info" method="post" onsubmit="return f_check()">
		<p style="text-align:center"><font size="20">SIGN UP</font><p>
		
		<p style="text-align:center">ID <br>
		<p style="text-align:center"><input type="text" name="u_id" size="16"> &nbsp;
		
		<p style="text-align:center">PASSWORD <br>
		<p style="text-align:center"><input type="password" name="u_pw" size="16"><p>
		
		<p style="text-align:center">PASSWORD CHECK <br>
		<p style="text-align:center"><input type="text" name="u_pw_c" size="16"><p>
		
		<p style="text-align:center">NAME <br>
		<p style="text-align:center"><input type="text" name="u_name" size="16"><p>
		
		<p style="text-align:center">PHONE <br>
		<p style="text-align:center">
		<input type="text" maxlength="30" size="30" name="u_phone"><p>
		
		<p style="text-align:center">MAIL<br>
		<p style="text-align:center">
		<input type="text" maxlength="50" size="50" name="u_mail"><p>
		
		<p style="text-align:center">Gender <br>
		<p style="text-align:center">
		<input type="radio" name="u_sex" value="Male">남
		<input type="radio" name="u_sex" value="Female">여
		<input type="radio" name="u_sex" value="Other">기타<p>
		
		<input type="submit" value="FINISH">
		<input type="reset" value="RESET">	
	</form>
	</div><br>
</body>
</html>
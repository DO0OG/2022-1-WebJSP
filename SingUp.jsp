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
				alert("Enter ID.");	//아이디 입력칸이 비어있으면 경고
				d.u_id.focus();
				return false;
			}
			if(d.u_pw.value.length==0)
			{
				alert("Enter Password.");	//비밀번호를 입력하지 않으면 경고
				d.u_pw.focus();
				return false;
			}
			if(d.u_pw.value!=d.u_pw_c.value)
			{
				alert("Check Password.");	//비밀번호가 일치하지 않을시 경고
				d.u_pw_c.focus();
				return false;
			}
			if(d.u_name.value.length==0)
			{
				alert("Enter Name.");	//이름을 입력하지 않으면 경고
				d.u_name.focus();
				return false;
			}
			if(d.phone1.value.length==0 || d.phone2.value.length==0 || d.phone3.value.length==0)
			{
				alert("Enter Phone Number.");	//이름을 입력하지 않으면 경고
				d.phone1.focus();
				d.phone2.focus();
				d.phone3.focus();
				return false;
			}
		}
	</script>
</head>
<body>
	TEST PAGE(SIGN UP)
	<hr>
	<form action="SignUp_C.jsp" name="u_info" method="post" onsubmit="return f_check()">
		<div align="center"><fieldset style="width:500px">
			<p style="text-align:center"><font size="20"><b>SIGN UP</font></b><p>
			
			<p style="text-align:center">ID <br>
			<p style="text-align:center"><input type="text" name="u_id" size="16"> &nbsp;
			
			<p style="text-align:center">PASSWORD <br>
			<p style="text-align:center"><input type="password" name="u_pw" size="16"><p>
			
			<p style="text-align:center">PASSWORD CHECK <br>
			<p style="text-align:center"><input type="text" name="u_pw_c" size="16"><p>
			
			<p style="text-align:center">NAME <br>
			<p style="text-align:center"><input type="text" name="u_name" size="16"><p>
			
			<p style="text-align:center">PHONE <br>
			<p style="text-align:center"><select name="choice" style="width:60px;height:20.5px">
				<option value="choice">통신사</option>
				<option value="SKT">SKT</option>
				<option value="KT">KT</option>
				<option value="LGU+">LGU+</option>
			</select>
			<p style="text-align:center">
			<input type="text" maxlength="3" size="3" name="phone1">
			<input type="text" maxlength="4" size="4" name="phone2">
			<input type="text" maxlength="4" size="4" name="phone3"><p>
			
			<p style="text-align:center">SEX <br>
			<p style="text-align:center">
			<input type="radio" name="gender" value="Male">남
			<input type="radio" name="gender" value="Female">여
			<input type="radio" name="gender" value="Other">기타<p>
			
			<p style="text-align:center">DESCRIPTION <br>
			<p style="text-align:center"><textarea name="Introduction" style="width:500px" cols="100" row="5"></textarea>
			<hr>
			
			<form action="SignUp_C.jsp" name="u_info" method="post" onsubmit="return f_check()">
				<input type="submit" value="FINISH"> &nbsp;
			</form>
			<form>
				<input type="submit" value="CANCEL">
			</form>
		</div><br>
		</fieldset>
	</from>
</body>
</html>

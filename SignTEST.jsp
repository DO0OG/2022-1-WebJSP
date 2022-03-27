<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign TEST</title>
</head>
<body>
	TEST PAGE(SIGN IN)
	<hr>
	<from action="from_SignTEST_2.jsp" name="person_info" method="get">
			<p style="text-align:center"><b>SIGN IN</b><p>
			
			<p style="text-align:center">ID <br>
			<p style="text-align:center"><input type="text" name="p_id" size="16"> &nbsp;
			<p style="text-align:center"><input type="submit" value="중복확인"><p>
			
			<p style="text-align:center">PASSWORD <br>
			<p style="text-align:center"><input type="password" name="p_pw" size="16"><p>
			
			<p style="text-align:center">PASSWORD CHECK <br>
			<p style="text-align:center"><input type="password_c" name="p_pw_c" size="16"><p>
			
			<p style="text-align:center">NAME<br> 
			<p style="text-align:center"><input type="text" name="p_name" size="16"><p>
			
			<p style="text-align:center">PHONE<br>
			<p style="text-align:center"><select name="choice" style="width:60px;height:20.5px">
				<option value="choice">통신사</option>
				<option value="SKT">SKT</option>
				<option value="KT">KT</option>
				<option value="LGU+">LGU+</option>
			</select>
			<p style="text-align:center"><input type="text" maxlength="3" size="3" name="phone1">
			<input type="text" maxlength="4" size="4" name="phone2">
			<input type="text" maxlength="4" size="4" name="phone3"><p>
			
			<p style="text-align:center">SEX<br>
			<p style="text-align:center"><input type="radio" name="gender" value="Male">남
			<input type="radio" name="gender" value="Female">여
			<input type="radio" name="gender" value="Other">기타<p>
			
			<p style="text-align:center">DESCRIPTION<br>
			<p style="text-align:center"><textarea name="Introduction" cols="70" row="5"></textarea>
			<hr>
			
		<div align="center">
			<input type="submit" value="FINISH"> &nbsp;  &nbsp;
			<input type="submit" value="CANCEL">
		</div><br>
		</fieldset>
	</from>
</body>
</html>
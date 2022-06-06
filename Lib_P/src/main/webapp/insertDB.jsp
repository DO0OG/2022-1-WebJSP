<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<%
	String u_id = request.getParameter("u_id");
	String u_pw = request.getParameter("u_pw");
	String u_name = request.getParameter("u_name");
	String u_phone = request.getParameter("u_phone");
	String u_mail = request.getParameter("u_mail");
	String u_sex = request.getParameter("u_sex");
	
	String sql = "INSERT INTO members(id, passwd, name, phone, mail, sex) VALUES";
	sql += "('" + u_id + "','" + u_pw + "','" + u_name + "','" + u_phone + "','" + u_mail + "','" + u_sex + "')";
	
	Statement sm = conn.createStatement();
	
	int count = sm.executeUpdate(sql);
	if(count == 1){
		response.sendRedirect("signupSuccess.jsp");
	}else{
		out.println("회원가입 실패!");
		response.sendRedirect("SignUp.jsp");
	}
	sm.close();
	conn.close();
%>
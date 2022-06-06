<%@ page import = "java.sql.*" %>    
<%
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/lib";
	String user = "root";
	String passwd = "aa9509481";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, passwd);
%>
<%@ page import="java.sql.*"%>

<%
	//커넥션 객체 초기화
	Connection conn = null;
	
	String url = "jdbc:mysql://localhost:3306/Dairies?ServerTimeZone=UTC";
	String user = "root";
	String password = "12345";
	
	//데이터베이스와 연동하기 위해 JDBC를 로딩하도록 Class.forName()메소드 작성
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
%> 
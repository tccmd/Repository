<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 저장</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		/* String name = request.getParameter("name");
		String zipcode = request.getParameter("zipNo");
		String addr = request.getParameter("roadAddrPart1");
		String addrdetail = request.getParameter("addrDetail");
		String tel = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String profile = request.getParameter("profile");
		String ip = request.getRemoteAddr(); */
		
		/* String _hobby = "";
		if(hobby!=null) {
			for(int i = 0; i<hobby.length; i++) {
				_hobby += hobby[i]+" ";
			}
		} */
		
		PreparedStatement pstmt = null; 
		
		try {
			String sql = "insert into member(id, pw)";
			sql = sql+ " values(?,?)"; //11개 //띄어쓰기 주의
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2,pw);
			/* pstmt.setString(3,name);
			pstmt.setString(4,zipcode);
			pstmt.setString(5,addr);
			pstmt.setString(6,addrdetail);
			pstmt.setString(7,tel);
			pstmt.setString(8,gender);
			pstmt.setString(9,_hobby);
			pstmt.setString(10,profile);
			pstmt.setString(11,ip);
			pstmt.executeUpdate(); */
			
			response.sendRedirect("/");
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}
	%>
					<script>
						alert("회원가입 되었습니다.");
						location.href = "/";
					</script>
</body>
</html>
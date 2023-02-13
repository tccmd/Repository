<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/dbconn.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
 		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "select id,pw from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String dbid = rs.getString("id");
				String dbpw = rs.getNString("pw");
				
				if(id.equals("admin") && pw.equals("12345")){
					session.setAttribute("id", id);
	%>
					<script type="text/javascript">
  						location.href="/administrator.do";
					</script>
	<%
				} 
				else if(id.equals(dbid) && pw.equals(dbpw)){
					session.setAttribute("id", id);
	%>
					<script type="text/javascript">
					location.href="/";
					</script>
	<%
				}
				else {
	%>
					<script type="text/javascript">
						history.back();
						alert("아이디, 비밀번호를 다시 확인해주세요.");
					</script>
	<%
				}
  			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} 
	%>	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복조회</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");	
	
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		try{
			String sql = "select id from member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				String dbId = rs.getString("id");
				
				if(id.equals(dbId)){
	%>
					<script>
						alert("이미 가입된 아이디입니다. 다시 입력해주세요");
						history.back();
					</script>
	<%				
				}
			}
			else{
	%>
					<script>
						alert("가입할 수 있는 아이디입니다.");
						location.href = "/member/idsearch.do?id=<%=id%>";
					</script>
	<%				
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	%>
</body>
</html>
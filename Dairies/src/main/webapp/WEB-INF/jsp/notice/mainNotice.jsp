<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/dbconn.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 		<%
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
			try {
				String sql = "select notice_idx , title from notice where deleted_yn = 'N' order by notice_idx  desc limit 1";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();

				while(rs.next()) {
					int noticeIdx = rs.getInt("notice_idx");
					String title = rs.getString("title");
					
					if(title.length()>10) {
						title = title.substring(0, 12) + " ...";
					}
		%> 
		<div class="row" align="center">
			<div style="width: 95%; height: 60px; line-height: 60px; border: 1px solid #eee; margin: 10px auto;">
							<a href="/notice/openNoticeList.do" style="color: #000; font-size: 10pt;">• 공지사항 <span style="color: #ccc">></span> [공지] <%=title %></a>
 				<!--<h3 class="text-center">
										
					<blockquote class="blockquote">

					</blockquote>
				</h3> -->
			 </div>
		</div>
		<%
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}
		%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="Dairies.board.dto.PageTO" %>
<%
	PageTO to = (PageTO)request.getAttribute("page");
	int curPage = to.getCurPage();
	int perPage = to.getPerPage();
	int totalCount = to.getTotalCount();
	
	int totalPage = totalCount / perPage;
	if(totalCount % perPage != 0){
		totalPage++;
	}
	
	// 파라미터.
	for(int i = 1; i <= totalPage; i++){
		if(curPage==i) {
			out.print("<font size=3 color='orange'>&nbsp;["+i+"]&nbsp;</font>");
		} else {
			out.print("<a href='list.do?curPage="+i+"'><font size=2 color='gray'>&nbsp;["+i+"]&nbsp;</font>");
		}
	}
%>
<c:forEach var="to" items="${ }">

</c:forEach>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 보기</title>
</head>
<body>
</body>
</html>
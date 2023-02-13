<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- 1. -->   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 보기</title>
</head>
<body>
	<h1>게시판 목록 보기</h1>
	<table border="1">
		<tr>
			<td colspan="5">
				<form action="search.do">
					<select name="searchName" size="1">
						<option value="author">작성자</option>
						<option value="title">글제목</option>
					</select>
					<input type="text" name="searchValue"/>
					<input type="submit" value="찾기"/>
				</form>
			</td>
		</tr>
		
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		
		<c:forEach var="dto" items="${list }"> <!-- list 정보는 이제 dto로 불린다. --> 
			<tr>
				<td>${dto.num }</td>
				<td>
					<c:forEach begin="1" end="${dto.repIndent }">
						<%="&nbsp;&nbsp;" %>
					</c:forEach>
					<a href="retrieve.do?num=${dto.num }">${dto.title }</a>
				</td> <!-- 제목이 들여쓰기를 할 수 있도록 Indent 적용 -->
				<td>${dto.author }</td>
				<td>${dto.writeday }</td>
				<td>${dto.readCnt }</td>
				${dto.repRoot}
			</tr>
		</c:forEach>	
	</table>
	<a href="writeui.do">글쓰기</a> <!-- 요청 URI 주소기 때문에 경로를 지정하지 않는다. "ui"가 핵심. -->
	<a href="list.do">목록 보기</a>
</body>
<!-- 프로젝트 단위로 실행 -->
</html>
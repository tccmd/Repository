<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답변글 쓰기 화면</title>
</head>
<body>
	<h1>답변글 쓰기 화면</h1>
	<form action="reply.do" method="post">
		<input type="text" name="num" value="${replyui.num }" />
		<input type="text" name="repRoot" value="${replyui.repRoot }" />
		<input type="text" name="repStep" value="${replyui.repStep }" />
		<input type="text" name="repIndent" value="${replyui.repIndent }" />
		원래 글번호: ${replyui.num }&nbsp;&nbsp;&nbsp;&nbsp;조회수: ${replyui.readCnt }<br>
		제목<input type="text" name="title" value="${replyui.title }" /><br>
		작성자<input type="text" name="author"/><br>
		내용<textarea rows="5" cols="20" name="content">${replyui.content }></textarea><br>
		<input type="submit" value="답변달기"/><br>
		<a href="list.do">목록보기</a>
	</form>
</body>
</html>
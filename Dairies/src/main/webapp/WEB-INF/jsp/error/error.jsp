<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<meta charset="UTF-8">
	<title>공통 에러 페이지</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>
	<!-- 헤드 여유 처리 -->
	<div style="height: 190px;"></div>
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	
	<%-- <p>${exception}{}</p>
	<ul>
		<c:forEach var="list" items="${exception.getStackTrace() }">
		${list.toString()}
		</c:forEach>
	</ul> --%>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>
</body>
</html>
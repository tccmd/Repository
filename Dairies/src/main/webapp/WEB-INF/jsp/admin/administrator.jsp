<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dairies</title>
<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div style="height: 190px;"></div>
		<div style="height: 130px;"></div>
		<div style="text-align: center;">
			<h3>ADMINISTRATOR</h3>
			<p>-</p>
			<h2>관리자 페이지</h2>
			<hr>
			<div>
				<div>
					<a href="/member/openMemberList.do">회원관리</a>
				</div>
				<div>
					<a href="/notice/openNoticeWrite.do">공지사항</a>
				</div>
				<div>
					<a href="/product/openProductWrite.do">상품등록</a>
				</div>
				<div>
					<a href="/member/logout.do">로그아웃</a>
				</div>
			</div>
			<hr>
		</div>
	</div>
	<div style="height: 190px;"></div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>

</body>
</html>
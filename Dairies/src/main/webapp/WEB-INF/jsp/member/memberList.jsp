<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

	<jsp:include page="../common/header.jsp" flush="false"></jsp:include>

	<!-- 헤드 여유 처리 -->
	<div style="height: 190px;"></div>

	<!-- 배경화면 이미지 처리를 위한 container -->
	<div class="container-fluid" align="center"
		style="background-color: rgb(242, 242, 247);">
		<div class="row">
			<div class="col-md-12">
				<!-- 타이틀 위쪽으로 이미지 보이기 위한 여유 처리 -->
				<div style="height: 80px;"></div>
				<!-- 타이틀 div -->
				<div class="text-center"
					style="background-color: #fff; width: 80%; padding: 20px;">
					<p style="font-size: 9pt; margin: 0px">MEMBER</p>
					<hr width="20px;" color="brown"
						style="height: 2px; margin: 7px auto 10px auto;">
					<h3 style="font-weight: bold;">
						<a href="/member/openMemberList.do" style="color: #000;">회원목록</a>
					</h3>
				</div>
				<!-- 여기까지 타이틀 div -->
			</div>
			<!-- 여기까지 타이틀 column12 -->
		</div>
		<!-- 여기까지 타이틀 row -->
		<!-- 내용 row -->
		<div class="row"
			style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12">

						<table class="table table-striped table-hover">
							<thead>
								<tr>
									<th>회원 번호</th>
									<th>아이디</th>
									<th>이메일</th>
									<th>생성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${list }">
									<fmt:parseNumber value="${list.memberIdx}" var="num" />
									<tr>
										<td>${list.memberIdx}</td>
										<td class="title">
											<%-- <a href="/member/openMemberDetail.do?memberIdx=${num}"> --%>
											${list.id} <!-- </a> -->
										</td>
										<td>${list.pw}</td>
										<td>${list.createdDatetime}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>
</body>
</html>
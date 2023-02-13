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
	<div class="container-fluid" id="contents" align="center">
		<!-- row 안의 column 그리드로 기본 구성됨 -->
		<div class="row">
			<div class="col-md-12">
				<!-- 타이틀 위쪽으로 이미지 보이기 위한 여유 처리 -->
				<div style="height: 80px;"></div>
				<!-- 타이틀 div -->
				<div class="text-center"
					style="background-color: #fff; width: 80%; padding: 20px;">
					<p style="font-size: 9pt; margin: 0px">PRODUCT</p>
					<hr width="20px;" color="brown"
						style="height: 2px; margin: 7px auto 10px auto;">
					<h3 style="font-weight: bold;">상품</h3>
				</div>
				<!-- 내용 row -->
				<div class="row"
					style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
					<c:forEach var="list" items="${list }" varStatus="status">
						<fmt:parseNumber value="${list.productIdx}" var="num" />
						<div class="col-md-4">
							<div class="card">
								<a href="/product/openProductDetail.do?productIdx=${num}"> <img
									class="card-img-top" t="Bootstrap Thumbnail First"
									src="../images/${fn:substring(file[status.index].storedFilePath,33,fn:length(file[status.index].storedFilePath))}"
									width="100%" />
								</a>
								<div class="card-block">
									<h5 class="card-title">
										<a href="/product/openProductDetail.do?productIdx=${num}">
											${list.title } </a>
									</h5>
									<p class="card-text">${list.contents }</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- 이까지 내용 -->
	</div>
	<!-- 이까지 container -->

	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>

</body>
</html>
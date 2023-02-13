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
					<p style="font-size: 9pt; margin: 0px">NOTICE</p>
					<hr width="20px;" color="brown"
						style="height: 2px; margin: 7px auto 10px auto;">
					<h3 style="font-weight: bold;">공지사항</h3>
				</div>
			</div>
		</div>
		<!-- 타이틀과 내용 사이를 띄우기 위한 div -->
		<div style="height: 50px;"></div>
		<!-- 개수, 검색어 row -->




		<!-- 컨텐츠row (내용row, 하단row) -->
		<div class="row"
			style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
			<div class="col-md-12">
				<!-- 내용 row -->
				<div class="row">
					<div class="col-md-6 pull-sm-1">
						<p>
							• 전체 <span style="color: rgb(35, 82, 178);">${fn:length(list)}건</span>의
							뉴스가 등록되어 있습니다.
						</p>
					</div>
					<div class="col-md-6 push-sm-3">
						<form role="form" class="form-inline" name="searchForm"
							method="get" action="/notice/search.do">
							<div class="form-group">
								<input type="text" class="form-control" name="lookFor" size="10" />
								<button type="submit" class="btn btn-primary">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path
											d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
								</button>
							</div>
						</form>
					</div>
				</div>
				<!-- 여기까지 개수, 검색어 row -->

				<!-- 내용 row -->
				<div class="row"
					style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
					<c:forEach var="list" items="${list }" varStatus="status">
						<fmt:parseNumber value="${list.noticeIdx}" var="num" />
						<div class="col-md-4">
							<div class="card">
								<a href="/notice/openNoticeDetail.do?noticeIdx=${num}"> <c:forEach
										var="file" items="${file }">
										<c:if test="${file.noticeIdx eq list.noticeIdx}">
											<img class="card-img-top" t="Bootstrap Thumbnail First"
												width="100%"
												src="../images/${fn:substring(file.storedFilePath,33,fn:length(file.storedFilePath))}" />
										</c:if>
									</c:forEach>
								</a>
								<div class="card-block">
									<h5 class="card-title">
										<a href="/notice/openNoticeDetail.do?noticeIdx=${num}">
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
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
		<div class="row">
			<div class="col-md-12">
				<!-- 타이틀 위쪽으로 이미지 보이기 위한 여유 처리 -->
				<div style="height: 80px;"></div>
				<!-- 타이틀 div -->
				<div class="text-center"
					style="background-color: #fff; width: 80%; padding: 20px;">
					<p style="font-size: 9pt; margin: 0px">BOARD</p>
					<hr width="20px;" color="brown"
						style="height: 2px; margin: 7px auto 10px auto;">
					<h3 style="font-weight: bold;">
						<a href="/board/openBoardPage.do?pageNumber=0&perPage=4" style="color: #000;">문의게시판</a>
					</h3>
				</div>
				<!-- 여기까지 타이틀 div -->
			</div>
			<!-- 여기까지 타이틀 column12 -->
		</div>
		<!-- 여기까지 타이틀 row -->

		<div style="height: 50px;"></div>

		<!-- 내용 row -->
		<div class="col-md-12" align="center">
			<div class="row" class="row"
				style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
				<div class="col-md-3" align="left">
					<div
						style="border-top: 1px solid #aaa; padding: 10px 0px; width: 90%">고객문의</div>
				</div>
				<div class="col-md-9">

					<!-- 개수, 검색어 row -->
					<div class="row" style="padding-bottom: 5%;">
						<div class="col-md-6" style="right: 8px;">
							<p>
								• 전체 <span style="color: rgb(35, 82, 178);">${fn:length(list)}건</span>의
								문의글이 등록되어 있습니다.
							</p>
						</div>
						<div class="col-md-6" style="left: 9%;">
							<form role="form" class="form-inline" name="searchForm"
								method="get" action="/board/search.do">
									<input type="text" class="form-control" name="lookFor"
										size="10" />
									<button type="submit" class="btn btn-primary">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path
												d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
									</button>
							</form>
						</div>
					</div>
					<!-- 여기까지 개수, 검색어 row -->

					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="page" items="${page }">
								<fmt:parseNumber value="${page.boardIdx}" var="num" />
								<tr>
									<td>${page.boardIdx}</td>
									<td class="title"><a
										href="/board/openBoardDetail.do?boardIdx=${num}">${page.title}</a></td>
									<td>${page.hitCnt}</td>
									<td>${page.createdDatetime}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 페이지, 글쓰기 row -->
					<div class="row" style="padding-bottom: 5%;">
						<div class="col-md-6">
							<nav class="pagination-sm">
								<ul class="pagination">
									<!-- <li class="page-item"><a class="page-link" href="#">Previous</a> -->
									</li>
									<c:forEach var="pageNumber" begin="1" end="${fn:length(list)/3}">
										<%-- ${pageNumber } --%>
										<li class="page-item"><a class="page-link" href="/board/openBoardPage.do?pageNumber=${pageNumber-1+(3*(pageNumber-1))}&perPage=${4}">${pageNumber}</a></li>	
										<%-- ${pageNumber-1+(3*(pageNumber-1))}
										${4} --%>
									</c:forEach>
									<!-- <li class="page-item"><a class="page-link" href="#">Next</a> -->
									</li>
								</ul>
							</nav>
						</div>
						<div class="col-md-6 push-sm-2">
							<button type="button" class="btn btn-light"
								onclick="location.href='/board/openBoardWrite.do'">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-pen-fill" viewBox="0 0 16 16">
  										<path
										d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z" />
										</svg>
							</button>
						</div>
					</div>
					<div>
					
					</div>
					<!-- 여기까지 페이지, 글쓰기 row -->
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
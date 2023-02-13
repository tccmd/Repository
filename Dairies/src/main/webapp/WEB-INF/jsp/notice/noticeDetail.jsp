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

	<jsp:include page="../common/header.jsp"></jsp:include>

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
					<p style="font-size: 9pt; margin: 0px">NOTICE</p>
					<hr width="20px;" color="brown"
						style="height: 2px; margin: 7px auto 10px auto;">
					<h3 style="font-weight: bold;"><a href="/notice/openNoticeList.do" style="color: #000;">공지사항</a></h3>
				</div>
				<!-- 여기까지 타이틀 div -->
			</div>
			<!-- 여기까지 타이틀 column12 -->
		</div>
		<!-- 여기까지 타이틀 row -->
		<!-- 컨텐츠row (내용row, 하단row) -->
		<div class="row" style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
			<div class="col-md-12">
				<!-- 내용 row -->
				<div class="row">
					<div class="col-md-6">
						<img alt="Bootstrap Image Preview"
						src="../images/${fn:substring(notice.fileList[0].storedFilePath,33,fn:length(notice.fileList[0].storedFilePath))}" />
					</div>
					<div class="col-md-6" align="left" style="padding-left: 6%">
						<h2>${notice.title}</h2>
						<p>${notice.createdDatetime }</p>
						<dl>
						<dd>${notice.contents }</dd>
						</dl>
					</div>
				</div>
				<!-- 하단 row -->
				<div class="row" style="padding-top: 10%;">
					<div class="col-md-6 text-left">
						<a 
						href="/notice/openNoticeDetail.do?noticeIdx=${detail[1].noticeIdx}">이전글 - ${detail[1].title }</a> 
					</div>
					<div class="col-md-6 text-right">
						<a 
						href="/notice/openNoticeDetail.do?noticeIdx=${detail[2].noticeIdx}">다음글 - ${detail[2].title }</a>
					</div>
				</div>
				<!-- 여기까지 하단 row -->
			</div>
		</div>
		<!-- 여기까지 컨텐츠row -->
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>

</body>
</html>
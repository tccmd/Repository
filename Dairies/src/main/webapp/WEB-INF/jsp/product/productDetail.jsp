<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

	<div class="container-fluid" id="contents" align="center">
		<div style="height: 100px;"></div>
		<div class="row"
			style="background-color: #fff; width: 80%; padding: 5% 1% 2% 1%;">
			<div class="col-md-6">
				<img alt="Bootstrap Image Preview"
					src="../images/${fn:substring(product.fileList[0].storedFilePath,33,fn:length(product.fileList[0].storedFilePath))}"
					width="100%" style="border: 1px solid #eee;" />
			</div>
			<div class="col-md-6" align="left">
				${product.title }의 즐거움을 되찾으세요!
				<h3>${product.title }</h3>
				<h5>&nbsp;</h5>
				<p>
					<span style="background-color: #eee;">#tag#tag#tag#tag#tag</span>
				</p>
				<button type="button" class="btn btn-primary"
					onclick="window.open('about:blank').location.href='https://sell.smartstore.naver.com/#/home/about','_blank'">구매하기</button>
			</div>
		</div>
		<div class="row"
			style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
			<div class="col-md-12">
				<hr style="background: #000;">
				<div class="tabbable" id="tabs-171118">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link active show" href="#tab1">상세 설명</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#tab2">제품 정보</a>
					</li>
				</ul>
			</div>
				<div class="row" id="tab1" align="left">
					<div class="col-md-12" style="padding: 5%;">

						<ul>
							<li class="list-item">Lorem ipsum dolor sit amet</li>
							<li class="list-item">Consectetur adipiscing elit</li>
							<li class="list-item">Integer molestie lorem at massa</li>
							<li class="list-item">Facilisis in pretium nisl aliquet</li>
							<li class="list-item">Nulla volutpat aliquam velit</li>
							<li class="list-item">Faucibus porta lacus fringilla vel</li>
							<li class="list-item">Aenean sit amet erat nunc</li>
							<li class="list-item">Eget porttitor lorem</li>
						</ul>
						<dl>
							<dt>Description lists</dt>
							<dd>A description list is perfect for defining terms.</dd>
							<dt>Euismod</dt>
							<dd>Vestibulum id ligula porta felis euismod semper eget
								lacinia odio sem nec elit.</dd>
							<dd>Donec id elit non mi porta gravida at eget metus.</dd>
							<dt>Malesuada porta</dt>
							<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
							<dt>Felis euismod semper eget lacinia</dt>
							<dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris
								condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
						</dl>
						<div class="media">
							<img class="mr-3" alt="Bootstrap Media Preview"
								src="https://www.layoutit.com/img/sports-q-c-64-64-8.jpg" />
							<div class="media-body">
								<h5 class="mt-0">Nested media heading</h5>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
								scelerisque ante sollicitudin commodo. Cras purus odio,
								vestibulum in vulputate at, tempus viverra turpis.
								<div class="media mt-3">
									<a class="pr-3" href="#"><img
										alt="Bootstrap Media Another Preview"
										src="https://www.layoutit.com/img/sports-q-c-64-64-2.jpg" /></a>
									<div class="media-body">
										<h5 class="mt-0">Nested media heading</h5>
										Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
										scelerisque ante sollicitudin commodo. Cras purus odio,
										vestibulum in vulputate at, tempus viverra turpis.
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="row" id="tab2">
					<div class="col-md-12" style="padding: 5%;">
						<hr>

						<table class="table">
							<tbody>
								<tr>
									<td>제품명</td>
									<td>${product.title }</td>
								</tr>
								<tr>
									<td>식품의 유형</td>
									<td>#DB준비중</td>
								</tr>
								<tr>
									<td>제조원 및 생산자</td>
									<td>#DB준비중</td>
								</tr>
								<tr>
									<td>유통전문판매</td>
									<td>#DB준비중</td>
								</tr>
								<tr>
									<td>수입품의 경우 수입자</td>
									<td>default 해당사항없음</td>
								</tr>
							</tbody>
						</table>
						<button type="button" class="btn btn-primary"
							onclick="location.href='/product/openProductList.do'"
							style="margin: 5%;">목록</button>
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
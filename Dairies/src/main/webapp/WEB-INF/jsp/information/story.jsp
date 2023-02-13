<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<p style="font-size: 9pt; margin: 0px">PHILOSOPHY</p>
					<hr width="20px;" color="brown"
						style="height: 2px; margin: 7px auto 10px auto;">
					<h3 style="font-weight: bold;">
						<a href="/notice/openNoticeList.do" style="color: #000;">
							가치체계</a>
					</h3>
				</div>
				<!-- 여기까지 타이틀 div -->
			</div>
			<!-- 여기까지 타이틀 column12 -->
		</div>
		<!-- 여기까지 타이틀 row -->
		<!-- 컨텐츠row (내용row, 하단row) -->
		<div class="row"
			style="background-color: #fff; width: 80%; padding: 3% 1% 2% 1%;">
			<div class="col-md-12">
				<div class="carousel slide" id="carousel-670262">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-670262"
							class="active"></li>
						<li data-slide-to="1" data-target="#carousel-670262"></li>
						<li data-slide-to="2" data-target="#carousel-670262"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" alt="Carousel Bootstrap First"
								src="https://www.layoutit.com/img/sports-q-c-1600-500-1.jpg" />
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" alt="Carousel Bootstrap Second"
								src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" alt="Carousel Bootstrap Third"
								src="https://www.layoutit.com/img/sports-q-c-1600-500-3.jpg" />
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget
									quam. Donec id elit non mi porta gravida at eget metus. Nullam
									id dolor id nibh ultricies vehicula ut id elit.</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carousel-670262"
						data-slide="prev"><span class="carousel-control-prev-icon"></span>
						<span class="sr-only">Previous</span></a> <a
						class="carousel-control-next" href="#carousel-670262"
						data-slide="next"><span class="carousel-control-next-icon"></span>
						<span class="sr-only">Next</span></a>
				</div>
				<div class="row">
					<div class="col-md-3" align="left">
						<div style="height: 50px;"></div>
						<blockquote class="blockquote">
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
								adipiscing elit. Integer posuere erat a ante.</p>
							<footer class="blockquote-footer">
								Someone famous in <cite>Source Title</cite>
							</footer>
						</blockquote>
						<ol>
							<li class="list-item">Lorem ipsum dolor sit amet</li>
							<li class="list-item">Consectetur adipiscing elit</li>
							<li class="list-item">Integer molestie lorem at massa</li>
							<li class="list-item">Facilisis in pretium nisl aliquet</li>
							<li class="list-item">Nulla volutpat aliquam velit</li>
							<li class="list-item">Faucibus porta lacus fringilla vel</li>
							<li class="list-item">Aenean sit amet erat nunc</li>
							<li class="list-item">Eget porttitor lorem</li>
						</ol>
					</div>
					<div class="col-md-9">
					<div style="height: 100px;"></div>
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
						<p>
							Lorem ipsum dolor sit amet, <strong>consectetur
								adipiscing elit</strong>. Aliquam eget sapien sapien. Curabitur in metus
							urna. In hac habitasse platea dictumst. Phasellus eu sem sapien,
							sed vestibulum velit. Nam purus nibh, lacinia non faucibus et,
							pharetra in dolor. Sed iaculis posuere diam ut cursus. <em>Morbi
								commodo sodales nisi id sodales. Proin consectetur, nisi id
								commodo imperdiet, metus nunc consequat lectus, id bibendum diam
								velit et dui.</em> Proin massa magna, vulputate nec bibendum nec,
							posuere nec lacus. <small>Aliquam mi erat, aliquam vel
								luctus eu, pharetra quis elit. Nulla euismod ultrices massa, et
								feugiat ipsum consequat eu.</small>
						</p>
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
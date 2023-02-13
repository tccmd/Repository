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
<script src="../js/validation.js"></script>
</head>
<script>
	function goPopup() {
		var pop = window.open("/member/jusoPopup.do", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
	}

	function jusoCallBack(roadAddrPart1, roadAddrPart2, zipNo) {
		String roadAddrPart1 = request.getParameter("roadAddrPart1");
		String roadAddrPart2 = request.getParameter("roadAddrPart2");
		String zipNo = request.getParameter("zipNo");
	}

	function idcheck() {
		var pop = window.open("/member/idsearch.do", "pop",
				"width=400,height=400,top=0,left=0");
	}

	function idCallBack(id) {
		document.member.id.value = id;
	}

	function check() {
		if (member.id.value == "") {
			alert("아이디를 입력하세요.");
			login.id.focus();
			return false;
		}
		if (member.pw.value == "") {
			alert("비밀번호를 입력하세요.");
			login.pw.focus();
			return false;
		}
		if (member.pw2.value == "") {
			alert("비밀번호 확인을 입력하세요.");
			login.pw2.focus();
			return false;
		}
		member.submit();
	}
</script>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div style="height: 190px;"></div>
	<div style="height: 150px;"></div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12">
						<h3 class="text-center">회원가입</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<form role="form" name="member" method="post"
							action="/member/insertMember.do" style=" width: 450px; margin: 0 auto;">

							<div class="form-group">
								<!-- <label for="Id"> 아이디 </label> -->
								<input type="email" class="form-control" id="id" name="id"
									readonly placeholder="* 아이디" />
								<button type="button" class="btn btn-outline-primary"
									onclick="idcheck()" style="margin-top: 10px;">아이디 중복
									확인</button>
							</div>

							<div class="form-group">
								<!-- <label for="Password"> Password </label> -->
								<input type="password" class="form-control" id="pw" name="pw"
									placeholder="* 비밀번호" />
							</div>

							<div class="form-group">
								<!-- <label for="Password Check"> Password Check </label> -->
								<input type="password" class="form-control" id="pw2"
									placeholder="* 비밀번호 확인" />
							</div>

							<hr>

							<div class="form-group">
								<label for="Tel"> Tel </label> <input type="text"
									class="form-control" name="tel" readonly
									placeholder="                          -                                 -           ">
								<span style="font-size: 10pt; color: #636c72;">본인 인증된
									휴대전화</span>
							</div>

							<div class="form-group">
								<label for="Email address"> Email address </label> <input
									type="text" class="form-control-inline" name="email"
									style="width: 94%;"> @
								<div class="row">
									<div class="col-md-6"
										style="padding-right: 3px; margin-right: 0;">
										<input type="text" class="form-control" id="email2"
											name="email2">
									</div>
									<div class="col-md-6"
										style="padding-left: 3px; margin-left: 0;">
										<select class="custom-select" id="email3" name="email3"
											style="width: 100%;">
											<option value="">이메일계정 선택</option>
											<option value="google.com">google.com</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.com">daum.com</option>
										</select>
									</div>
								</div>
								<span style="font-size: 10pt; color: #636c72;"> E-mail 주소
									입력시 사용가능 특수 문자는 '-', '.', '_'입니다.</span>
								<!-- <input
									type="email" class="form-control" id="email" placeholder="이메일 주소" /> -->
							</div>

							<div class="form-group">
								<label for="Adderss"> Address </label> <br> <input
									type="text" class="form-control-inline" name="zipNo" size="5"
									readonly onclick="member.zipbtn.focus()" placeholder="우편번호" />
								<input type="button" class="btn btn-outline-primary"
									name="zipbtn" value="우편번호" onclick="goPopup()"> <input
									type="text" class="form-control" name="roadAddrPart1" size="40"
									readonly onclick="member.zipbtn.focus()" placeholder="기본주소"
									style="margin-bottom: 0px;"> <input type="text"
									class="form-control" name="addrDetail" size="40" readonly
									onclick="member.zipbtn.focus()" placeholder="나머지 주소"> <span
									style="font-size: 10pt; color: #636c72;">우편번호 검색 후 나머지
									주소를 입력해 주세요.</span>
							</div>

							<hr>

							<div class="checkbox">
								<label for="Adderss"> 약관동의 </label> <br>
								<div class="row">
									<div class="col-md-6">
										<p>
											<label> <input type="checkbox" name="checkyes" />
												서비스 이용약관(필수)
											</label>
										<p>
											<label> <input type="checkbox" name="checkyes" />
												개인정보 수집/이용(필수)
											</label>
									</div>
									<div class="col-md-6" align="right">

										<a id="modal-718293" href="#modal-container-718293"
											role="button" class="btn" data-toggle="modal">Launch demo
											modal</a>

										<p>
											<button class="btn btn-outline-primary"
												onclick="window.open('/member/terms','Dairies','width=430,height=500,location=no,status=no,scrollbars=yes');">전문보기</button>
										<p>
											<button class="btn btn-outline-primary"
												onclick="window.open('/member/personal_information','Dairies','width=430,height=500,scrollbars=yes');">전문보기</button>
									</div>
								</div>
							</div>

							<button type="button" class="btn btn-block btn-primary"
								onclick="validation()">가입하기</button>

						</form>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
		</div>
		<div style="height: 190px;"></div>
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>
	<script>
		$("#email3").change(function() {
			$("#email2").val($("#email3").val());
		});
	</script>

	<div class="modal fade" id="modal-container-718293" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">

					<button type="button" class="btn btn-primary">Save changes
					</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>

	</div>


</body>
</html>
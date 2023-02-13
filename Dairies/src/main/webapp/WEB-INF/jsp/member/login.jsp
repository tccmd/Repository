<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../css/style.css" rel="stylesheet">
<title>Dairies</title>
<script>
	function check() {
		if (login.id.value == "") {
			alert("아이디를 입력하세요.");
			login.id.focus();
			return false;
		}
		if (login.pw.value == "") {
			alert("비밀번호를 입력하세요.");
			login.pw.focus();
			return false;
		}
		login.submit();
	}
</script>
<meta name="description"
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
</head>
<body>
<%-- 	<%
	String id = "";
	String num = "";
	if (session.getAttribute("id") != null) {
		num = (String) session.getAttribute("num");
		id = (String) session.getAttribute("id");
	}
	%> --%>

	<jsp:include page="../common/header.jsp"></jsp:include>
	<div style="height: 190px;"></div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12">
						<div style="height: 100px;"></div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-4">
						<form role="form" name="login" method="post"
							action="/member/loginOk.do" style=" width: 300px; border: solid 1px #dddddd; padding: 20px; margin: 0 auto;">
							<div class="form-group">

								<label for="Id"> Id </label> <input type="text"
									class="form-control" id="exampleInputEmail1" name="id" />
							</div>
							<div class="form-group">

								<label for="Pw"> Password </label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="pw" />
							</div>
							<button type="button" class="btn btn-block btn-primary" onclick="check()">
								로그인</button>
							<p style="font-size: 10pt; margin-top: 15px; text-align: center;">
								<a href="/member/openMemberWrite.do">회원가입</a> | 아이디 찾기 | 비밀번호 찾기
							</p>
						</form>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
		<div style="height: 100px;"></div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>

</body>
</html>
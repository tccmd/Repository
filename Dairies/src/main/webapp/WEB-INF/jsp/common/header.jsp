<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dairies</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="Dairies.bundle.message">

		<div class="row fixed-top" style="background-color: white;">
			<div class="col-md-12">
				<div class="row" style="padding: 7px;">
					<div class="col-md-12">
						<ul class="nav nav-pills">
							<li class="nav-item">
								<%
								String id = null;
								String num = null;
								if (session.getAttribute("id") != null) {
									/* num = (String) session.getAttribute("num"); */
									id = (String) session.getAttribute("id");
								}
								if (id != null) {
								%> <a class="nav-link active" href="/member/logout.do"><fmt:message
										key="logout" /></a> <%
 } else {
 %> <a class="nav-link active" href="/member/login.do"><fmt:message
										key="login" /></a> <%
 }
 %>
							</li>
							<li class="nav-item"><a class="nav-link" href="?language=ko">KR</a></li>
							<li class="nav-item"><a class="nav-link" href="?language=en">EN</a>
							</li>
							<li class="nav-item dropdown ml-md-auto">
								<%
								if (id == null) {
								%> <span></span> <%
 } else if (id.equals("admin")) {
 %>
							
							<li class="nav-item"><a class="nav-link"
								href="/administrator.do">관리자 페이지</a></li>
							<%
							}
							%>
							<li><a class="nav-link dropdown-toggle"
								href="http://example.com" id="navbarDropdownMenuLink"
								data-toggle="dropdown" href=""><fmt:message
										key="costomerCenter" /></a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="/board/openBoardPage.do?pageNumber=0&perPage=4"><fmt:message
											key="CustomerInquiry" /></a>
									<!-- <a class="dropdown-item" href="#"> </a> <a class="dropdown-item" href="#">Something else here</a> -->
									<!-- 						<div class="dropdown-divider">
						</div> <a class="dropdown-item" href="#">Separated link</a> -->
								</div></li>


						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h3 class="text-center" id="logo" align="center">
							<a href="/">Dairies</a>
						</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<ul class="nav nav-tabs" style="width: 1000px; margin: 0 auto;">
							<li class="nav-item dropdown mx-md-5"><a
								class="nav-link dropdown-toggle" href="http://example.com"
								id="navbarDropdownMenuLink" data-toggle="dropdown"><fmt:message key="aboutUs" /></a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownMenuLink">
									<a class="dropdown-item" href="/information/story"><fmt:message key="aboutUs" /></a> 
									<div class="dropdown-divider"></div>
									<a
										class="dropdown-item" href="/information/location"><fmt:message
											key="location" /></a>
								</div></li>
							<li class="nav-item"><a class="nav-link"
								href="/product/openProductList.do"><fmt:message key="brand" /></a></li>
							<li class="nav-item"><a class="nav-link"
								href="/information/contribution"><fmt:message
										key="socialContribution" /></a></li>
							<li class="nav-item"><a class="nav-link"
								href="/information/management"><fmt:message
										key="ethicalManagement" /></a></li>
							<li class="nav-item"><a class="nav-link"
								href="/notice/openNoticeList.do"><fmt:message
										key="notice" /></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</fmt:bundle>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String id = request.getParameter("id"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복조회</title>
<script>
	function closewin(){
		opener.member.id.value = "<%=id%>";
		window.close();
	}
</script>
</head>
<body onload="member.id.focus()">
	<% 
		if(id == null){ 
	%>
			<form name="member" method="post" action="/member/idsearchOk.do">
				* 가입하고자 하는 아이디를 입력하세요. <p>
				<input type="text" name="id">
				<input type="submit" value="아이디 중복조회">
			</form>
	<%
		}
		else{
	%>		
			<h4><%=id %>는 가입할 수 있는 아이디입니다.</h4>
			<input type="button" value="닫기" onclick="closewin()">
	<%		
		}
	%>	
</body>
</html>
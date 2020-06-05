<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
</head>
<body bgcolor="#f5f5f5">
	<jsp:include page="/header.jsp"/>
	<div style="float: left">
		<jsp:include page="/side.jsp"/>
	</div>
	<div style="border: 4px solid none; width: 350px; display: flex; padding: 80px 0 0 150px; background-color:ivory;">
		<form action="chkLogin.jsp" method="post">
			<font size="5px" style="padding-left: 3px;"><b>[로그인 페이지]</b></font><br>
			<input type="text" name="id" placeholder="아이디"><br>
			<input type="password" name="pw" placeholder="비밀번호"><br>
			<input type="submit" value="로그인" style="width: 176px">
		</form>
	</div>
	<div style="border: 4px solid none; width: 350px; display: flex; padding: 0 0 100px 150px; background-color:ivory;">
		<input type="button" onclick="location.href='join.jsp'" value="회원가입" style="width: 176px">
	</div>
</body>
</html>
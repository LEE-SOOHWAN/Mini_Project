<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#main-style{
		text-decoration: none;
		color: #3e6b89;
	}
</style>
</head>
<body bgcolor="#f5f5f5">
	<jsp:include page="header.jsp"/>
	<div style="float: left">
		<jsp:include page="side.jsp"/>
	</div>
	<table style="width: 1100px; position: absolute; left: 540px;">
		<tr align="center">
			<td><br><a href="/Mini_Project/hobby/today.jsp" id="main-style"><font size="10px"><b>오늘의 취미</b></font></a><br><br></td>
			<td><br><a href="/Mini_Project/hobby/recommend.jsp" id="main-style"><font size="10px"><b>추천 취미</b></font></a><br><br></td>
			<td><br><a href="/Mini_Project/hobby/popular.jsp" id="main-style"><font size="10px"><b>뜨는 취미</b></font></a><br><br></td>
		</tr>
		<tr align="center">
			<td><img src="IMG/logo.png" style="width:100px"></td>
			<td><img src="IMG/logo.png" style="width:100px"></td>
			<td><img src="IMG/logo.png" style="width:100px"></td>
		</tr>
		<tr align="center">
			<td><br>취미는 즐겁습니다. 다들 취미를 가지세요<br><br></td>
			<td><br>취미는 즐겁습니다. 다들 취미를 가지세요<br><br></td>
			<td><br>취미는 즐겁습니다. 다들 취미를 가지세요<br><br></td>
		</tr>
		<tr align="center">
			<td><img src="IMG/logo.png" style="width:100px"></td>
			<td><img src="IMG/logo.png" style="width:100px"></td>
			<td><img src="IMG/logo.png" style="width:100px"></td>
		</tr>
		<tr align="center">
			<td><br>취미는 즐겁습니다. 다들 취미를 가지세요<br><br></td>
			<td><br>취미는 즐겁습니다. 다들 취미를 가지세요<br><br></td>
			<td><br>취미는 즐겁습니다. 다들 취미를 가지세요<br><br></td>
		</tr>
	</table>
</body>
</html>
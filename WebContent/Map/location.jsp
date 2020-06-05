<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>
<style>
	#location-style{
		width: 200px;
	}
</style>
</head>
<body bgcolor="#f5f5f5">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>

	<jsp:include page="/header.jsp"/>
	<div style="float: left">
		<jsp:include page="/side.jsp"/>
	</div>
	<div style="border: 4px solid none; width: 450px; height: 280px; display: flex; padding: 80px 0 0 200px; background-color:ivory;">
		<form action="chkLocation.jsp" method="post">
			<font size="5px"><b>[좌표 등록 페이지]</b></font><br><br>
			<input type="text" name="name" placeholder="이름" id="location-style"><br>
			<input type="text" name="xpoint" placeholder="X좌표" id="location-style"><br>
			<input type="text" name="ypoint" placeholder="Y좌표" id="location-style"><br>
			<input type="text" name="title" placeholder="타이틀" id="location-style"><br>
			<input type="text" name="content" placeholder="내용" id="location-style"><br><br>
			<input type="submit" value="등록" style="width: 80px; margin-left: 65px;">
		</form>
	</div>
	<br>
	<font size="5">
		<a style="padding-left: 190px;" href="https://www.google.co.kr/maps/@37.053745,125.6553969,5z?hl=ko">좌표 찾는 사이트</a><br><br>
		<b style="padding-left: 200px;">좌표 찾는 방법</b><br><br>
		<a style="padding-left: 30px">1. 사이트에 들어간다</a><br>
		<a style="padding-left: 30px">2. 찾고자 하는 좌표의 주소를 검색한다</a><br>
		<a style="padding-left: 30px">3. 찾고자 하는 주소에 표시에</a><br>
		<a style="padding-left: 30px">&nbsp;&nbsp;&nbsp;검색되어 있는 마커를 오른쪽 클릭한다</a><br>
		<a style="padding-left: 30px">4. '이곳이 궁금한가요?'를 클릭하여 좌표를 확인한다</a><br>
	</font>
</body>
</html>
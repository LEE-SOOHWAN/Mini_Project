<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	#side-style{
		background-color: #3e6b89;
		width: 285px;
		height: 800px;
	}
	#side-font{
		text-decoration: none;
		color: #f5f5f5;
	}
	#floatdiv { 
    	position: fixed; _position: absolute; _z-index: -1;
   		width: 285px;
    	overflow: hidden;
    	top: 290px;
	}
</style>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div id="side-style">
		<div id="floatdiv" align="center" style="border:4px solid #143046; width: 276px;"><br>
			<c:choose>
				<c:when test="${sessionScope.check == 1 }">
					<a href="/Mini_Project/Login/logout.jsp" id="side-font"><font size="5px"><b>로그아웃</b></font></a><br><br>
				</c:when>
				<c:otherwise>
					<a href="/Mini_Project/Login/login.jsp" id="side-font"><font size="5px"><b>로그인</b></font></a><br><br>
				</c:otherwise>
			</c:choose>
			<a href="/Mini_Project/Board/check.jsp" id="side-font"><font size="5px"><b>게시판</b></font></a><br><br>
			<a href="/Mini_Project/survey.jsp" id="side-font"><font size="5px"><b>설문조사</b></font></a><br><br>
			<a href="/Mini_Project/Map/location.jsp" id="side-font"><font size="5px"><b>좌표공유</b></font></a><br><br>
			<a href="/Mini_Project/Map/map.jsp" id="side-font"><font size="5px"><b>지도</b></font></a><br><br>
			<a href="/Mini_Project/developer.jsp" id="side-font"><font size="5px"><b>제작자</b></font></a><br><br>
		</div>
	</div>
</body>
</html>
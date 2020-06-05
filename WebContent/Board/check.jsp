<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
	<c:when test="${sessionScope.check == 1 }">
		<script>
			location.href="category.jsp"
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("로그인 후에 이용해주세요")
			location.href="/Mini_Project/Login/login.jsp"
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>
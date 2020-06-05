<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>

<jsp:useBean id="dao2" class="MapDB.MapDAO"/>
<c:set var="dto2" value="${dao2.chkData(param.name) }"/>
<c:choose>
	<c:when test="${param.name == dto2.name }">
		<script>
			alert("이미 존재하는 좌표입니다")
			location.href = "location.jsp"
		</script>
	</c:when>
	<c:otherwise>
		${dao2.registData(param.name, param.xpoint, param.ypoint, param.title, param.content) }
		<script>
			alert("좌표 등록 성공")
			location.href="/Mini_Project/main.jsp"
		</script>
	</c:otherwise>
</c:choose>

</body>
</html>
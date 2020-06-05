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
<jsp:useBean id="dao" class="LoginDB.LoginDAO"/>
<c:set var="dto" value="${dao.chkUser(param.id) }"/>
<c:choose>
	<c:when test="${param.id eq dto.id && param.pw eq dto.pw}">
		<c:set var="chkid" scope="session" value="${param.id }"/>
		<c:set var="check" scope="session" value="1"/>
		<script type="text/javascript">
			alert("로그인 성공!")
			location.href="/Mini_Project/main.jsp";
		</script>
	</c:when>
	
	<c:when test="${param.id ne dto.id }">
		<script type="text/javascript">
			alert("로그인 실패! 아이디를 확인해 주세요.")
			location.href="login.jsp";
		</script>
	</c:when>
	
	<c:otherwise>
		<script type="text/javascript">
			alert("로그인 실패! 아이디와 비밀번호를 확인해 주세요.")
			location.href="login.jsp";
		</script>
	</c:otherwise>
</c:choose>


</body>
</html>
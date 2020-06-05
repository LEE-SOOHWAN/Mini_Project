<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<jsp:useBean id="dao" class="LoginDB.LoginDAO"/>
<c:set var="dto" value="${dao.chkUser(param.id) }"/>

<c:choose>
	<c:when test="${param.id == dto.id }">
		<script>
			alert("이미 존재하는 아이디 입니다")
			location.href="join.jsp"
		</script>
	</c:when>
	<c:otherwise>
		${dao.chkMember(param.id, param.pw, param.name, param.gender, 
			param.year, param.month, param.day, param.address )}
		<script>
			alert("회원가입 성공!")
			location.href="login.jsp"
		</script>
	</c:otherwise>
</c:choose>
	
<%--
	아이디:${param.id }
	비밀번호:${param.pw }
	이름:${param.name }
	성별:${param.gender }
	생일:${param.year }
	월:${param.month }
	일:${param.day }
	주소:${param.address }
 --%>

</body>
</html>
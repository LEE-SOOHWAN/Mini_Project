<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#f5f5f5">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>

	<jsp:include page="/header.jsp"/>
	<div style="float: left">
		<jsp:include page="/side.jsp"/>
	</div>
	
	<jsp:useBean id="dao" class="BoardDB.BoardDAO"/>
	<jsp:useBean id="dto" class="BoardDB.BoardDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	${dao.reply(dto) }
	<c:redirect url="board.jsp"/>

</body>
</html>
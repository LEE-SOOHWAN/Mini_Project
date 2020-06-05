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

<jsp:useBean id="dao" class="LoginDB.LoginDAO"/>
<c:set var="dto" value="${dao.chkUser(param.id) }"/>

	<jsp:include page="/header.jsp"/>
	<div style="float: left">
		<jsp:include page="/side.jsp"/>
	</div>
	
	<div align="center">
		<form action="write_save.jsp" method="post">
			<table border="1">
				<tr> 
					<td>이름</td>
					<td><input type="text" name="name" size="50"></td>
				</tr>
				<tr>
					<td>카테고리</td>
					<td>
						<select name="category">
							<c:choose>
								<c:when test="${param.id == 1 }">
									<option value="">선택하세요</option>
									<option value="창작" <c:if test="${param.category == '창작' }">selected</c:if>>창작</option>
									<option value="미디어" <c:if test="${param.category == '미디어' }">selected</c:if>>미디어</option>
									<option value="미용" <c:if test="${param.category == '미용' }">selected</c:if>>미용</option>
									<option value="게임" <c:if test="${param.category == '게임' }">selected</c:if>>게임</option>
									<option value="기타" <c:if test="${param.category == '기타' }">selected</c:if>>기타</option>
								</c:when>
								<c:otherwise>
									<option value="">선택하세요</option>
									<option value="운동" <c:if test="${param.category == '운동' }">selected</c:if>>운동</option>
									<option value="여행" <c:if test="${param.category == '여행' }">selected</c:if>>여행</option>
									<option value="기타" <c:if test="${param.category == '기타' }">selected</c:if>>기타</option>
								</c:otherwise>
							</c:choose>
						</select>
					</td>
				</tr>
				<tr> 
					<td>제목</td>
					<td><input type="text" name="title" size="50"></td>
				</tr>
				<tr> 
					<td>내용</td>
					<td><textarea name="content" rows="10" cols="150"></textarea></td> 
				</tr>
				<tr> 
					<td colspan="2">
						<input type="submit">&nbsp;&nbsp;
						<a href="javascript:history.back()">목록보기</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>
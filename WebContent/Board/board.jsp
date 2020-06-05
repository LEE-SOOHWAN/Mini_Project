<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#border{
		border-top: 1px solid black; 
		border-bottom: 1px solid black;
	}
	table{border-collapse: collapse;}
	.tr{border-bottom: 3px solid #143046;}
	.tr1{border-top: 3px solid #143046; height: 40px;}
	.tr2{text-align: center;}
	.th{width: 100px;}
</style>
</head>
<body bgcolor="#f5f5f5">
	<jsp:include page="/header.jsp"/>
	<div style="float: left">
		<jsp:include page="/side.jsp"/>
	</div>
	
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:useBean id="dao" class="BoardDB.BoardDAO"/>
	
	<div align="center" style="padding-top: 50px;">
		<table style="border-top: 3px solid #143046; border-bottom: 3px solid #143046;">
			<caption><p><font size="6" style="color: #3e6b89;"><b>전체 게시판</b></font></p></caption>
			<tr class="tr" style="color: #3e6b89; font-size: 20px;">
				<th class="th">번호</th> <th class="th">카테고리</th> <th class="th">이름</th> 
				<th class="th">제목</th> <th class="th">날짜</th> <th class="th">조회수</th> 
				<!-- <th>group</th> <th>step</th> <th>indent</th> -->
			</tr>
			<c:forEach items="${dao.list() }" var="dto">
			<tr class="tr2">
				<td class="td">${dto.id }</td><td>${dto.category }</td><td>${dto.name }</td>
				<td td style="text-align: left;">
					<c:forEach begin="1" end="${dto.indent }">↳</c:forEach>
					<a href="content_view.jsp?id=${dto.id }">${dto.title }</a>
				</td>
				<td>${dto.savedate }</td>
				<td>${dto.hit }</td><%-- <td>${dto.idgroup }</td>
				<td>${dto.step }</td><td>${dto.indent }</td> --%>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="9" class="tr1">
					<input type="button" value="뒤로가기" onclick="location.href='category.jsp'">
					<a href="write_view.jsp">글작성</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
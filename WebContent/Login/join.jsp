<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#join-style{
		width: 190px;
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
	<div style="border: 4px solid none; width: 350px; height: 500px; display: flex; padding: 80px 0 0 150px; background-color:ivory;" >
		<form action="chkJoin.jsp" method="post">
			<font size="5px"><b>[회원가입 페이지]</b></font><br><br>
			<input type="text" name="id" placeholder="아이디" id="join-style"><br>
			<input type="password" name="pw" placeholder="비밀번호" id="join-style"><br>
			<input type="password" name="pw2" placeholder="비밀번호 확인" id="join-style"><br>
			<input type="text" name="name" placeholder="이름" id="join-style"><br><br>
			성별선택<br>
			<input type="radio" name="gender" value="1"> 남자
			<input type="radio" name="gender" value="2"> 여자<br><br>
			<input type="hidden" name="birth"> 생일 <br>
			
				<select name="year">
					<%	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy");
				 		String num = formatter.format(new java.util.Date());
				 		int today=Integer.parseInt(num);
				 		
						for(int i=today; i>=today-100; i--) {%>
							<option value=<%= i %>><%= i %></option>
						<% } %>
				</select>년
				
				
				<select name="month">
					
					<%for(int i=1; i<=12; i++){ %>
							<option value=<%= i %>><%= i %></option> 
						<% } %>
				</select>월
				
				
				<select name="day">
					<%for(int i=1; i<=31; i++){ %>
							<option value=<%= i %>><%= i %></option> 
						<% } %>
				</select>일<br><br>
		
			주소<br><textarea name="address" style="width:190px; height:50px; resize:none"></textarea><br><br>
		
			<input type="submit" value="회원가입" style="margin-left: 65px">
		</form>
	</div>
</body>
</html>
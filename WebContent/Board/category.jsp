<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#color{
		color: #3e6b89;
	}
	#wsize{
		width: 100px;
	}
	#hsize{
		height: 100px;
	}
	#text{
		text-decoration: none;
	}
</style>
</head>
<body bgcolor="#f5f5f5">
	<jsp:include page="/header.jsp"/>
	<div style="float: left">
		<jsp:include page="/side.jsp"/>
	</div>
	<div style="display: flex; padding-left: 735px; padding-top: 50px;">
		<table>
			<tr id="color">
				<th id="hsize" colspan="8"><a href="board.jsp" style="text-decoration: none;">
					<font size="5">전체 게시판</font></a>
				</th>
			</tr>
		</table>
	</div>
	<div style="display: flex; padding-left: 360px;">
		<table style="border-bottom: 3px solid #143046; border-top: 3px solid #143046; bo">
			<tr id="color">
				<th id="hsize" colspan="5" style="border-right: 3px solid #143046; border-bottom: 3px solid #143046;">
					<font size="6">정적</font>
				</th>
			</tr>
			<tr id="color" align="center">
				<td id="wsize">
					<p><a href="sub_board.jsp?id=1&category=창작" id="text"><font size="5px">창작</font></a></p>
				</td>
				<td id="wsize">
					<a href="sub_board.jsp?id=1&category=미디어" id="text"><font size="5px">미디어</font></a>
				</td>
				<td id="wsize">
					<a href="sub_board.jsp?id=1&category=미용" id="text"><font size="5px">미용</font></a>
				</td>
				<td id="wsize">
					<a href="sub_board.jsp?id=1&category=게임" id="text"><font size="5px">게임</font></a>
				</td>
				<td id="wsize" style="border-right: 3px solid #143046;">
					<a href="sub_board.jsp?id=1&category=기타" id="text"><font size="5px">기타</font></a>
				</td>
			</tr>
		</table>
		<table style="border-bottom: 3px solid #143046; border-top: 3px solid #143046;">
			<tr id="color">
				<th id="hsize" colspan="3" style="border-bottom: 3px solid #143046;">
					<font size="6">동적</font>
				</th>
			</tr>
			<tr id="color" align="center">
				<td id="wsize">
					<p><a href="sub_board.jsp?id=2&category=운동" id="text"><font size="5px">운동</font></a></p>
				</td>
				<td id="wsize">
					<a href="sub_board.jsp?id=2&category=여행" id="text"><font size="5px">여행</font></a>
				</td>
				<td id="wsize">
					<a href="sub_board.jsp?id=2&category=기타" id="text"><font size="5px">기타</font></a>
				</td>
			</tr>
		</table>
	</div>

</body>
</html>
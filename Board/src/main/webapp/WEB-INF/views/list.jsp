<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Insert title here</title>
<link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="/css/common.css">
<style>
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function () {
		$('.btn').on('click',function (e) {
			$(location).attr('href','/boardWriteform');
		})
	})
</script>
</head>
<body>
	<div id="main" style="width:80%; margin: 0 auto;">
		<h2>게시물 목록</h2>
		<button class="btn btn-primary" style="float : right;">작성</button>
		<table class="table"> 
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			<c:forEach var="board" items="${boardList}">
				<tr>
					<td>${board.idx}</td>
					<td><a href="/boardView/${board.idx}">${board.title}</a></td>
					<td>${board.writter}</td>
					<td>${board.regdate}</td>
					<td>${board.readcount}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
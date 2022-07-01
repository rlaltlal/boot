<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>		
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
		$('[type=button]').each(function (index,item) {
			$(item).on('click',function () {
				switch ($(item).val()) {
					case '목록으로':
						$(location).attr('href','/boardList2');
						break;
					default:
						break;
				}
			})
		})
	})
</script>
</head>
<body>
	<div id="main" style="width:80%; margin: 0 auto;">
		<form action="/boardUpdate" method="post">
			<input type="hidden" name="idx" value="${board.idx}">
			<h2>게시물 수정하기</h2>
			<div class="form-group">
				<label for="">번호</label>
				<span>${board.idx}</span>
			</div>
			<div class="form-group">
				<label for="">제목</label>
				<span><input type="text" name="title" value="${board.title}" class="form-control"></span>
			</div>
			<div class="form-group">
				<label for="">작성자</label>
				<span>${board.writter}</span>
			</div>
			<div class="form-group">
				<label for="">날짜</label>
				<span>${board.regdate}</span>
			</div>
			<div class="form-group">
				<label for="">조회수</label>
				<span>${board.readcount}</span>
			</div>
			<div class="form-group">
				<label for="">내용</label>
				<span><input type="text" name="cont" value="${board.cont}" class="form-control"></span>
			</div>
			<div class="form-group">
				<input type="submit" value="제출" class="btn btn-default">
				<input type="button" value="목록으로" class="btn btn-default">
			</div>
		</form>
	</div>
</body>
</html>
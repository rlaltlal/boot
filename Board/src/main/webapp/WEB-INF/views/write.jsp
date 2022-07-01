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
		$('form').on('submit',function (e) {
			if($('[name=title]').val()==''){
				alert('제목을 입력하세요.');
				return false;
			}
		})
	})
</script>
</head>
<body>
	<div id="main" style="width:80%; margin: 0 auto;">
		<h2>게시물 작성</h2>
		<button class="btn btn-primary" style="float : right;">작성</button>
		<form action="/boardWrite" method="post">
			<div class="form-group">
				<label for="">제목</label>
				<input type="text" name="title" id="" class="form-control">
			</div>
			<div class="form-group">
				<label for="">작성자</label>
				<input type="text" name="writter" id="" class="form-control" value="${sessionScope.id}">
			</div>
			<div class="form-group">
				<label for="">내용</label>
				<textarea name="cont" id="" cols="30" rows="10" class="form-control"></textarea>
			</div>
			<button type="submit" class="btn btn-default">작성하기</button>
		</form>
	</div>
</body>
</html>
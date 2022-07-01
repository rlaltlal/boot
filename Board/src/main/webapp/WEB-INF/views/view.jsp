<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
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
					case '수정하기':
						$(location).attr('href','/boardUpdateform/${board.idx}');
						break;
					case '삭제하기':
						$(location).attr('href','/boardDelete/${board.idx}');
						break;
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
		<h2>게시물 내용보기</h2>
		<div class="form-group">
			<label for="">번호</label>
			<span>${board.idx}</span>
		</div>
		<div class="form-group">
			<label for="">제목</label>
			<span>${board.title}</span>
		</div>
		<div class="form-group">
			<label for="">작성자</label>
			<span>${board.writter}</span>
		</div>
		<div class="form-group">
			<label for="">날짜</label>
			<span>
				<fmt:parseDate value="${board.regdate}" var="regdate" pattern="yyyymmdd" scope="page"/>
				<fmt:formatDate value="${regdate}" pattern="yyyy-MM-dd"/>
			</span>
		</div>
		<div class="form-group">
			<label for="">조회수</label>
			<span>${board.readcount}</span>
		</div>
		<div class="form-group">
			<label for="">내용</label>
			<p>${board.cont}</p>
		</div>
		<div class="form-group">
			<input type="button" value="수정하기" class="btn btn-default">
			<input type="button" value="삭제하기" class="btn btn-default">
			<input type="button" value="목록으로" class="btn btn-default">
		</div>
	</div>
</body>
</html>
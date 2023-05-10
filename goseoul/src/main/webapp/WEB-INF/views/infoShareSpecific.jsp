<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 공유 상세정보</title>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-primary">정보 공유 상세정보</h2>
		<table class="table table-bordered">
			<tr>
				<td>글번호</td>
				<td>${board.free_no}</td>
			</tr>
			<tr>
				<td>지역번호</td>
				<td>${board.local_no}</td>
			</tr>
			<tr>
				<td>글제목</td>
				<td>${board.free_title}</td>
			</tr>
			<tr>
				<td>유저번호</td>
				<td>${board.user_no}</td>
			</tr>
			<tr>
				<td>글내용</td>
				<td>${board.free_content}</td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>${board.free_category}</td>
			</tr>
			<tr>
				<td>키워드</td>
				<td>${board.free_tag}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${board.free_hit}</td>
			</tr>
			<tr>
				<td>좋아요</td>
				<td>${board.free_like}</td>
			</tr>
			<tr>
				<td>싫어요</td>
				<td><pre>${board.free_dislike}</pre></td>
			</tr>
			<tr>
				<td>작성시간</td>
				<td><pre>${board.free_date}</pre></td>
			</tr>
			
			
			
		</table>
		<a href="infoShareList?pageNum=${pageNum}" class="btn btn-info">목록</a>
		<a href="updateForm?num=${board.free_no}&pageNum=${pageNum}"
			class="btn btn-info">수정</a> <a
			href="deleteForm?num=${board.free_no}&pageNum=${pageNum}"
			class="btn btn-info">삭제</a> 

		
	


	
	</div>
</body>

<footer>
</footer>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 공유 리스트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="./js/jquery.js"></script>
<script src="./js/bootstrap.min..js"></script>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-primary">정보 공유 리스트</h2>
		<table class="table table-striped">
			<tr>
				<td>글번호</td>
				<td>지역번호</td>
				<td>글제목</td>
				<td>유저번호</td>
				<td>글내용</td>
				<td>카테고리</td>
				<td>키워드</td>
				<td>조회수</td>
				<td>좋아요</td>
				<td>싫어요</td>
				<td>작성시간</td>
			</tr>
			<c:if test="${empty list}">
				<tr>
					<td colspan="11">데이터가 없습니다</td>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:set var="no" value="${no }"></c:set>
				<c:forEach var="board" items="${list }">
					<tr>
						<td>${no}</td>			
						<td>${board.local_no}</td>						
							<td><a
								href="infoShareSpecific?num=${board.free_no}&pageNum=${pp.currentPage}"
								class="btn btn-default"> <c:if test="${board.re_level >0 }">
										<img alt="" src="${path }/images/level.gif" height="2"
											width="${board.re_level *5 }">
										<img alt="" src="${path }/images/re.gif">
									</c:if> ${board.free_title} <c:if test="${board.free_hit > 30 }">
										<img alt="" src="${path }/images/hot.gif">
									</c:if></a></td>
							<td>${board.user_no}</td>
							<td>${board.free_content}</td>

							<td>${board.free_category}</td>
							<td>${board.free_tag}</td>
							<td>${board.free_hit}</td>
							<td>${board.free_like}</td>
							<td>${board.free_dislike}</td>
							<td>${board.free_date}</td>						
					</tr>
					<c:set var="no" value="${no - 1}"></c:set>
				</c:forEach>
			</c:if>
		</table>
		
		<form action="list?pageNum=1">
			<select name="search">
				<option value="free_title"
					<c:if test="${search=='free_title'}">selected="selected" </c:if>>제목</option>
				<option value="free_content"
					<c:if test="${search=='free_content'}">selected="selected" </c:if>>내용</option>
				<option value="user_no"
					<c:if test="${search=='user_no'}">selected="selected" </c:if>>유저번호</option>
				<option value="subcon"
					<c:if test="${search=='subcon'}">selected="selected" </c:if>>제목+내용</option>
			</select> <input type="text" name="keyword"> 
			<input type="submit" value="확인">
		</form>
		
		<!-- 검색목록 페이징 -->
		<ul class="pagination">
			<c:if test="${not empty keyword}">
				<c:if test="${pp.startPage > pp.pagePerBlk }">
					<li><a
						href="list?pageNum=${pp.startPage - 1}&search=${search}&keyword=${keyword}">이전</a></li>
				</c:if>
				<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
					<li <c:if test="${pp.currentPage==i}"> class="active"</c:if>><a
						href="list?pageNum=${i}&search=${search}&keyword=${keyword}">${i}</a></li>
				</c:forEach>
				<c:if test="${pp.endPage < pp.totalPage}">
					<li><a
						href="list?pageNum=${pp.endPage + 1}&search=${search}&keyword=${keyword}">다음</a></li>
				</c:if>
			</c:if>

			<!-- 전체목록 페이징 -->
			<c:if test="${empty keyword}">
				<c:if test="${pp.startPage > pp.pagePerBlk }">
					<li><a href="list?pageNum=${pp.startPage - 1}">이전</a></li>
				</c:if>
				<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
					<li <c:if test="${pp.currentPage==i}">class="active"</c:if>><a
						href="list?pageNum=${i}">${i}</a></li>
				</c:forEach>
				<c:if test="${pp.endPage < pp.totalPage}">
					<li><a href="list?pageNum=${pp.endPage + 1}">다음</a></li>
				</c:if>
			</c:if>
		</ul>
		<div align="center">
			<a href="insertForm" class="btn btn-info">글 입력</a>
		</div>
	</div>
</body>
<footer> </footer>

</html>
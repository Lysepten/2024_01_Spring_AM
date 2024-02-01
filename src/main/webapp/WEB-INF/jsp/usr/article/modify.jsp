<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MODIFY"></c:set>
<%@ include file="../common/head.jspf"%>
<!DOCTYPE html>
<html>
<body>

	<table  class="table-box-1" border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>날짜</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성자명</th>
			</tr>
		</thead>
		<tbody>
			<td>${article.id }</td>
			<td>${article.regDate.substring(0,10) }</td>
			<td>${article.title }</td>
			<td>${article.body }</td>
			<td>${article.memberId }</td>
			<td>${article.nickname }</td>
		</tbody>
	</table>

	<div>
	<a href="list">리스트로 돌아가기</a>
	</div>




</body>
</html>
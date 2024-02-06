<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="#{board.code } ARTICLE LIST"></c:set>
<%@ include file="../common/head.jspf"%>


<section class="mt-8 text-xl px-4">
	<div class="mx-auto overflow-x-auto">
		<div class="badge badge-outline">${articlesCount }개</div>
		<table class="table-box-1 table" border="1">
			<colgroup>
				<col style="width: 10%" />
				<col style="width: 20%" />
				<col style="width: 60%" />
				<col style="width: 10%" />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>날짜</th>
					<th>제목</th>
					<th>작성자</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="article" items="${articles }">
					<tr class="hover">
						<td>${article.id }</td>
						<td>${article.regDate.substring(0,10) }</td>
						<td><a href="detail?id=${article.id }">${article.title }</a></td>
						<td>${article.extra__writer }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="pagination flex justify-center mt-3">
		<div class="btn-group">
			<c:forEach begin="1" end="${totalPage }" var="i">
				<a class="btn btn-sm ${param.page == i ? 'btn-active' : '' }" href="?boardId=${board.id }&page=${i }&keyword=${keyword }&keywordbody=${keywordbody }">${i }</a>
				
			</c:forEach>
		</div>
	</div>
	
	<form action="/usr/article/list" method="POST">
    <div class="search_wrap">
        <div class="search_area">
            <input type="text" name="keyword"/>
            <input class="btn btn-sm" type="submit" value="Search" autocomplete="off" />
        </div>
    </div>
    </form>
    
    <form action="/usr/article/list" method="POST">
    <div class="search_wrap">
        <div class="search_area">
            <input type="text" name="keywordbody"/>
            <input class="btn btn-sm" type="submit" value="Search" autocomplete="off" />
        </div>
    </div>
    </form>
	
</section>
<%@ include file="../common/foot.jspf"%>
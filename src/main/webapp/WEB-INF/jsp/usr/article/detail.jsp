<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head.jspf"%>

	<script type="text/javascript">
    function ajax_text() {
        var hit = 0;
        $.ajax({ 
            type:"POST", 
            url:"list",
            data: {
                hit: hit,
            },
            dataType: 'int',
            success:function(result){ 
                console.log(result);
            }
        });
    }
</script>

<script>

    // Ajax 요청을 보냅니다.
    $.ajax({
      url: '/usr/article/detail',
      type: 'POST',
      data: JSON.stringify(hit),
      success: function(result) {
        // 성공적으로 응답을 받았을 때 처리할 로직을 작성합니다.
        // response 변수에는 컨트롤러에서 반환한 데이터가 포함됩니다.
      },
      error: function() {
        // 응답이 실패했을 때 처리할 로직을 작성합니다.
      }
    });
  }
</script>


<section class="mt-8 text-xl px-4">
	<div class="mx-auto">
		<table class="table-box-1" border="1">
			<tbody>
				<tr>
					<th>번호</th>
					<td>${article.id }</td>
				</tr>
				<tr>
					<th>작성날짜</th>
					<td>${article.regDate }</td>
				</tr>
				<tr>
					<th>수정날짜</th>
					<td>${article.updateDate }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${article.extra__writer }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${article.title }</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${article.body }</td>
				</tr>
				<tr>
					<th>조회수</th>
					<td>${article.hit }</td>
				</tr>
			</tbody>
		</table>
		<div class="btns mt-5">
			<button class="btn btn-outline" type="button" onclick="history.back();">뒤로가기</button>
			<c:if test="${article.userCanModify }">
				<a class="btn btn-outline" href="../article/modify?id=${article.id }">수정</a>
			</c:if>
			<c:if test="${article.userCanDelete }">
				<a class="btn btn-outline" onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false;"
					href="../article/doDelete?id=${article.id }">삭제</a>
			</c:if>
			<button class="btn" onclick="ajax_text()">👍 따봉 👍</button>
			
		</div>
	</div>
</section>



<%@ include file="../common/foot.jspf"%>
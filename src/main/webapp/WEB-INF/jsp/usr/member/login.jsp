<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="LOGIN"></c:set>
<%@ include file="../common/head.jspf"%>
 <section class="mt-8 text-xl px-4">
 <nav class="mx-auto">
 
 <form  class="login-box-1" method="POST" action="/usr/member/doLogin">
 
		<div class="loginIdBox">
			로그인 아이디 : <input autocomplete="off" type="text"
				placeholder="아이디를 입력해주세요" name="loginId" />
		</div>
		
		<div class="loginPwBox">
			로그인 비밀번호 : <input autocomplete="off" type="text"
				placeholder="비밀번호를 입력해주세요" name="loginPw" />
		</div>
		
		<button style="color: #64d899;" type="submit">로그인</button>
		
		<div class="backList">
		<a href="../article/list">리스트로 돌아가기</a>
	</div>
	
	</form>

	
	</nav>
	</section>

<%@ include file="../common/foot.jspf"%>
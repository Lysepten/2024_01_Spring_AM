<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- mushion head -->
<%-- <%@ include file="../common/mushionHead.jspf"%> --%>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resource/common.css" />
<link rel="stylesheet" href="/resource/mushion.css" />

<script src="/resource/common.js" defer="defer"></script>
<!-- 테일윈드 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" />

<!-- daisy ui 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/daisyui/4.6.1/full.css" />

<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="https://cdn.tailwindcss.com"></script>

<!-- barlow 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<style>
@import url('https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap')
</style>
<!-- inter 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Inter:wght@100..900&display=swap" rel="stylesheet">
<style>
@import url('https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Inter:wght@100..900&display=swap')
</style>
<!-- roboto 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Inter:wght@100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<style>
@import url('https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Inter:wght@100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap')
</style>

<div class="w-[1903px] h-[1107px] relative overflow-hidden bg-black">
  <div class="flex justify-start items-start absolute left-[217px] top-0">
    <img class="flex-grow-0 flex-shrink-0 w-[748px] h-[1106.64px]" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcuD0Jt%2FbtsFkUUqiCH%2F2AAHbFgq6UScpEPJUe7Yw0%2Fimg.png" />
    <div class="flex-grow-0 flex-shrink-0 w-[720px] h-[1107px]">
      <div
        class="w-[720px] h-[1107px] absolute left-[747.5px] top-[-0.5px] bg-[#071015] border border-black"
        style="box-shadow: 0px 4px 4px 0 rgba(0,0,0,0.25);"
      ></div>
      <div class="w-[450px] h-[885px]">
        <p class="absolute left-[926px] top-[800px] text-2xl text-left">
          <span class="text-2xl text-left text-[#a9acbb]">계정이 필요하신가요 ? </span
          ><span class="text-2xl text-left text-[#28a7ff]">무료로 가입하기</span>
        </p>
        <p class="absolute left-[900px] top-[111px] text-base text-left text-[#a9acbb]">
          환영합니다.
        </p>
        <p class="absolute left-[900px] top-[168px] text-[34px] text-left text-white">
          사용중인 계정으로 로그인
        </p>
        <p class="absolute left-[1183px] top-[490px] text-base text-left text-[#028baf]">
          비밀번호를 잊으셨나요?
        </p>
        <p class="absolute left-[937px] top-[490px] text-base text-left text-[#a9acbb]">
          아이디 기억하기
        </p>
        <svg
          width="17"
          height="17"
          viewBox="0 0 17 17"
          fill="none"
          xmlns="http://www.w3.org/2000/svg"
          class="absolute left-[911px] top-[491px]"
          preserveAspectRatio="none"
        >
          <path
            d="M14.3333 1H2.66667C1.74619 1 1 1.74619 1 2.66667V14.3333C1 15.2538 1.74619 16 2.66667 16H14.3333C15.2538 16 16 15.2538 16 14.3333V2.66667C16 1.74619 15.2538 1 14.3333 1Z"
            stroke="#545872"
            stroke-width="2"
            stroke-linecap="round"
            stroke-linejoin="round"
          ></path>
        </svg>
        <div class="w-[419px] h-12">
          <div
            class="w-[419px] h-12 absolute left-[895.5px] top-[612.5px] rounded-[48px] bg-[#28a7ff] border border-[#28a7ff]"
          ></div>
          <p class="absolute left-[1042px] top-[627px] text-base text-left text-black">
            새로운 계정 만들기
          </p>
        </div>
        <div class="w-[411px] h-[54px]">
          <p class="absolute left-[953px] top-[394px] text-base text-left text-[#a9acbb]">
            **************
          </p>
          <div
            class="w-[411px] h-[54px] absolute left-[899.5px] top-[375.5px] rounded-xl border border-[#28a7ff]"
          ></div>
          <svg
            width="18"
            height="12"
            viewBox="0 0 18 12"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[925.5px] top-[401.17px]"
            preserveAspectRatio="none"
          >
            <path
              d="M14.8333 1.1665H3.16667C2.24619 1.1665 1.5 1.9127 1.5 2.83317V8.6665C1.5 9.58698 2.24619 10.3332 3.16667 10.3332H14.8333C15.7538 10.3332 16.5 9.58698 16.5 8.6665V2.83317C16.5 1.9127 15.7538 1.1665 14.8333 1.1665Z"
              stroke="#028BAF"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            ></path></svg
          ><svg
            width="12"
            height="11"
            viewBox="0 0 12 11"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[928.83px] top-[393.67px]"
            preserveAspectRatio="none"
          >
            <path
              d="M1.8335 9.1665V5.83317C1.8335 4.7281 2.27248 3.66829 3.05388 2.88689C3.83529 2.10549 4.89509 1.6665 6.00016 1.6665C7.10523 1.6665 8.16504 2.10549 8.94644 2.88689C9.72784 3.66829 10.1668 4.7281 10.1668 5.83317V9.1665"
              stroke="#028BAF"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            ></path>
          </svg>
        </div>
        <div class="w-[411px] h-[54px]">
          <p class="absolute left-[953px] top-[285px] text-base text-left text-[#a9acbb]">
            testuser@gmail.com
          </p>
          <div
            class="w-[411px] h-[54px] absolute left-[899.5px] top-[267.5px] rounded-xl border border-[#28a7ff]"
          ></div>
          <svg
            width="16"
            height="8"
            viewBox="0 0 16 8"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[926.33px] top-[296.5px]"
            preserveAspectRatio="none"
          >
            <path
              d="M14.6668 6.5V4.83333C14.6668 3.94928 14.3156 3.10143 13.6905 2.47631C13.0654 1.85119 12.2176 1.5 11.3335 1.5H4.66683C3.78277 1.5 2.93493 1.85119 2.30981 2.47631C1.68469 3.10143 1.3335 3.94928 1.3335 4.83333V6.5"
              stroke="#028BAF"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            ></path></svg
          ><svg
            width="10"
            height="10"
            viewBox="0 0 10 10"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
            class="absolute left-[929.67px] top-[286.5px]"
            preserveAspectRatio="none"
          >
            <path
              d="M4.99984 8.16667C6.84079 8.16667 8.33317 6.67428 8.33317 4.83333C8.33317 2.99238 6.84079 1.5 4.99984 1.5C3.15889 1.5 1.6665 2.99238 1.6665 4.83333C1.6665 6.67428 3.15889 8.16667 4.99984 8.16667Z"
              stroke="#028BAF"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            ></path>
          </svg>
        </div>
        <div class="w-[200px] h-12">
          <div
            class="w-[200px] h-12 absolute left-[899.5px] top-[535.5px] rounded-[48px] bg-[#506ecc]"
          ></div>
          <img
            src="image-8.png"
            class="w-8 h-[31px] absolute left-[922.5px] top-[543.5px] object-none"
          />
          <p class="absolute left-[965px] top-[551px] text-base text-left text-[#a9acbb]">
            Facebook
          </p>
        </div>
        <div class="w-[200px] h-12">
          <div
            class="w-[200px] h-12 absolute left-[1118.5px] top-[535.5px] rounded-[48px] border border-[#28a7ff]"
          ></div>
          <img
            src="image-7.png"
            class="w-8 h-[30px] absolute left-[1139.5px] top-[544.5px] object-none"
          />
          <p class="absolute left-[1194px] top-[551px] text-base text-left text-[#a9acbb]">
            Google
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
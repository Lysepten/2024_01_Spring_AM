package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.MemberService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Member;
import com.example.demo.vo.ResultData;
import com.example.demo.vo.Rq;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UsrMemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("/usr/member/doLogout")
	@ResponseBody
	public String doLogout(HttpServletRequest req, HttpSession httpSession) {
		
		Rq rq = (Rq) req.getAttribute("rq");

		httpSession.removeAttribute("loginedMemberId");

		return Ut.jsReplace("S-1", "로그아웃 되었습니다.", "../article/list");
	}
	
	@RequestMapping("/usr/member/login")
	public String doLogin(HttpSession httpSession) {
		
		return "/usr/member/login";
	}
	@RequestMapping("/usr/member/doLogin")
	@ResponseBody
	public String doLogin(HttpServletRequest req, HttpSession httpSession, String loginId, String loginPw) {

		Rq rq = (Rq) req.getAttribute("rq");
		
		if (rq.isLogined()) {
			return Ut.jsReplace("F-A", "이미 로그인 상태입니다", "../article/list");
		}
		
		if (Ut.isNullOrEmpty(loginId)) {
			return Ut.jsReplace("F-1", "아이디를 입력해주세요", "../member/login");
		}
		if (Ut.isNullOrEmpty(loginPw)) {
			return Ut.jsReplace("F-2", "비밀번호를 입력해주세요", "../member/login");
		}
		
		Member member = memberService.getMemberByLoginId(loginId);
		
		if (member == null) {
			return Ut.jsHistoryBack("F-3", Ut.f("%s(은)는 존재하지 않는 아이디입니다", loginId));
		}
		
		if (member.getLoginPw().equals(loginPw) == false) {
			return Ut.jsReplace("F-4", "비밀번호가 일치하지 않습니다", "../member/login");
		}
		
		httpSession.setAttribute("loginedMemberId", member.getId());
//		model.addAttribute("httpSession", httpSession);
		
		return Ut.jsReplace("S-1", "환영합니다.", "../article/list");
	}
	
	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public ResultData<Member> doJoin(HttpSession httpSession, String loginId, String loginPw, String name,
			String nickname, String cellphoneNum, String email) {
		boolean isLogined = false;

		if (httpSession.getAttribute("loginedMemberId") != null) {
			isLogined = true;
		}

		if (isLogined) {
			return ResultData.from("F-A", "이미 로그인 상태입니다");
		}

		if (Ut.isNullOrEmpty(loginId)) {
			return ResultData.from("F-1", "아이디를 입력해주세요");
		}
		if (Ut.isNullOrEmpty(loginPw)) {
			return ResultData.from("F-2", "비밀번호를 입력해주세요");
		}
		if (Ut.isNullOrEmpty(name)) {
			return ResultData.from("F-3", "이름을 입력해주세요");
		}
		if (Ut.isNullOrEmpty(nickname)) {
			return ResultData.from("F-4", "닉네임을 입력해주세요");
		}
		if (Ut.isNullOrEmpty(cellphoneNum)) {
			return ResultData.from("F-5", "전화번호를 입력해주세요");
		}
		if (Ut.isNullOrEmpty(email)) {
			return ResultData.from("F-6", "이메일을 입력해주세요");
		}

		ResultData<Integer> joinRd = memberService.join(loginId, loginPw, name, nickname, cellphoneNum, email);

		if (joinRd.isFail()) {
			return (ResultData) joinRd;
		}

		Member member = memberService.getMember(joinRd.getData1());

		return ResultData.newData(joinRd, "member", member);
	}
}
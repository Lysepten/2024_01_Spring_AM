package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ReactionPointService;
import com.example.demo.util.Ut;
import com.example.demo.vo.ResultData;
import com.example.demo.vo.Rq;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class UsrReactionPointController {

	@Autowired
	private Rq rq;

	@Autowired
	private ReactionPointService reactionPointService;

	// 액션 메서드

	@RequestMapping("/usr/reactionPoint/doGoodReaction")
	@ResponseBody
	public String doGoodReaction(String relTypeCode, int relId, String replaceUri) {

		int usersReaction = reactionPointService.usersReaction(rq.getLoginedMemberId(), relTypeCode, relId);

		if (usersReaction == 1) {
			reactionPointService.doremove(rq.getLoginedMemberId(), relTypeCode, relId);
			reactionPointService.removeGoodReactionPoint(relId);
			return Ut.jsReplace("F-1", "좋아요 취소함ㅋ", "/usr/article/detail?id="+relId);
		} else if (usersReaction == -1) {
			reactionPointService.doremove(rq.getLoginedMemberId(), relTypeCode, relId);
			reactionPointService.removeBadReactionPoint(relId);
			doGoodReaction(relTypeCode, relId, replaceUri);
			return Ut.jsReplace("F-1", "싫어요 취소하고 좋아요 누름ㅎ", "/usr/article/detail?id="+relId);
		}
		
//		if (usersReaction == 0) {
//			reactionPointService.doremove(rq.getLoginedMemberId(), relTypeCode, relId);
//			return Ut.jsHistoryBack("F-1", "이건 왜나오지?");
//		}

		ResultData reactionRd = reactionPointService.increaseReactionPoint(rq.getLoginedMemberId(), relTypeCode, relId);

		return Ut.jsReplace(reactionRd.getResultCode(), reactionRd.getMsg(), replaceUri);
	}
	
	@RequestMapping("/usr/reactionPoint/doBadReaction")
	@ResponseBody
	public String doBadReaction(String relTypeCode, int relId, String replaceUri) {

		int usersReaction = reactionPointService.usersReaction(rq.getLoginedMemberId(), relTypeCode, relId);

		if (usersReaction == -1) {
			reactionPointService.doremove(rq.getLoginedMemberId(), relTypeCode, relId);
			reactionPointService.removeBadReactionPoint(relId);
			return Ut.jsReplace("F-1", "싫어요 취소함ㅋ", "/usr/article/detail?id="+relId);
		} else if (usersReaction == 1) {
			reactionPointService.doremove(rq.getLoginedMemberId(), relTypeCode, relId);
			reactionPointService.removeGoodReactionPoint(relId);
			doBadReaction(relTypeCode, relId, replaceUri);
			return Ut.jsReplace("F-1", "좋아요 취소하고 싫어요 누름ㅎ", "/usr/article/detail?id="+relId);
		}
		
//		if (usersReaction == 0) {
//			reactionPointService.doremove(rq.getLoginedMemberId(), relTypeCode, relId);
//			return Ut.jsHistoryBack("F-1", "이건 왜나오지?");
//		}
		
		ResultData reactionRd = reactionPointService.reduseReactionPoint(rq.getLoginedMemberId(), relTypeCode, relId);

		return Ut.jsReplace(reactionRd.getResultCode(), reactionRd.getMsg(), replaceUri);
	}

}
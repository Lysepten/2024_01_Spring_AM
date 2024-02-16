package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.ArticleService;
import com.example.demo.service.ReplyService;
import com.example.demo.util.Ut;
import com.example.demo.vo.Reply;
import com.example.demo.vo.ResultData;
import com.example.demo.vo.Rq;

@Controller
public class UsrReplyController {

	@Autowired
	private Rq rq;

	@Autowired
	private ArticleService articleService;

	@Autowired
	private ReplyService replyService;

	@RequestMapping("/usr/reply/dowrite")
	@ResponseBody
	public Object doGoodReaction(Model model, String relTypeCode, int relId, String content) {
		
		if (Ut.isNullOrEmpty(content)) {
			return Ut.jsHistoryBack("F-2", "내용을 입력해주세요");
		}
	
		ResultData replyRd = replyService.addReply(rq.getLoginedMemberId(), relTypeCode, relId, content);

		if (replyRd.isFail()) {
			return ResultData.from(replyRd.getResultCode(), replyRd.getMsg());
		}
		
		return Ut.jsReplace(replyRd.getResultCode(), replyRd.getMsg(), "../article/detail?id=" + relId);
	}

}
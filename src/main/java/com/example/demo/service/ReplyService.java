package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ReactionPointRepository;
import com.example.demo.repository.ReplyRepository;
import com.example.demo.vo.Reply;
import com.example.demo.vo.ResultData;

@Service
public class ReplyService {

	@Autowired
	private ArticleService articleService;

	@Autowired
	private ReplyRepository replyRepository;

	public ReplyService(ReplyRepository replyRepository) {
		this.replyRepository = replyRepository;
	}


	public ResultData addReply(int loginedMemberId, String relTypeCode, int relId, String content) {

		int affectedRow = replyRepository.addReply(loginedMemberId, relTypeCode, relId, content);
		
		System.err.println(affectedRow);
		
		if (affectedRow != 1) {
			return ResultData.from("F-1", "댓글 생성 실패");
		}

		return ResultData.from("S-1", "댓글 생성!");
	}


	public List<Reply> getForPrintReplys(int relId, String relTypeCode) {
		return replyRepository.getForPrintReplys(relId, relTypeCode);
	}


	public ResultData getReply(int loginedMemberId, int id, int relId) {
		
		return replyRepository.getReply(loginedMemberId, id, relId);
	}


	public void deleteReply(int id) {
		replyRepository.deleteReply(id);
		
	}

//	public ResultData addBadReactionPoint(int loginedMemberId, String relTypeCode, int relId) {
//		int affectedRow = reactionPointRepository.addBadReactionPoint(loginedMemberId, relTypeCode, relId);
//
//		if (affectedRow != 1) {
//			return ResultData.from("F-1", "싫어요 실패");
//		}
//
//		switch (relTypeCode) {
//		case "article":
//			articleService.increaseBadReactionPoint(relId);
//			break;
//		}
//
//		return ResultData.from("S-1", "싫어요!");
//	}
//
//	public ResultData deleteGoodReactionPoint(int loginedMemberId, String relTypeCode, int relId) {
//		reactionPointRepository.deleteReactionPoint(loginedMemberId, relTypeCode, relId);
//
//		switch (relTypeCode) {
//		case "article":
//			articleService.decreaseGoodReactionPoint(relId);
//			break;
//		}
//		return ResultData.from("S-1", "좋아요 취소 됨");
//
//	}
//
//	public ResultData deleteBadReactionPoint(int loginedMemberId, String relTypeCode, int relId) {
//		reactionPointRepository.deleteReactionPoint(loginedMemberId, relTypeCode, relId);
//
//		switch (relTypeCode) {
//		case "article":
//			articleService.decreaseBadReactionPoint(relId);
//			break;
//		}
//		return ResultData.from("S-1", "싫어요 취소 됨");
//	}
//
//	public boolean isAlreadyAddGoodRp(int memberId, int relId, String relTypeCode) {
//		int getPointTypeCodeByMemberId = reactionPointRepository.getSumReactionPoint(memberId, relTypeCode, relId);
//
//		if (getPointTypeCodeByMemberId > 0) {
//			return true;
//		}
//
//		return false;
//	}
//
//	public boolean isAlreadyAddBadRp(int memberId, int relId, String relTypeCode) {
//		int getPointTypeCodeByMemberId = reactionPointRepository.getSumReactionPoint(memberId, relTypeCode, relId);
//
//		if (getPointTypeCodeByMemberId < 0) {
//			return true;
//		}
//
//		return false;
//	}

}
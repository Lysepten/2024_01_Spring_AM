package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.Reply;
import com.example.demo.vo.ResultData;

@Mapper
public interface ReplyRepository {

	@Insert("""
			INSERT INTO `reply`
			SET regDate = NOW(),
			updateDate = NOW(),
			relTypeCode = #{relTypeCode},
			relId = #{relId},
			memberId = #{memberId},
			content = #{content}
			""")
	public int addReply(int memberId, String relTypeCode, int relId, String content);

	
//	@Select("""
//			SELECT *
//			FROM `reply`
//			WHERE relTypeCode = #{relTypeCode}
//			AND relId = #{relId}
//			""")
//	public List<Reply> getForPrintReplys(int relId, String relTypeCode);
	
	@Select("""
			SELECT R.*, M.nickname
			FROM `reply` AS R
			INNER JOIN `member` AS M
			ON R.memberId = M.id
			WHERE relTypeCode = #{relTypeCode}
			AND relId = #{relId}
			""")
	public List<Reply> getForPrintReplys(int relId, String relTypeCode);

	@Select("""
			SELECT R.*, M.nickname
			FROM `reply` AS R
			INNER JOIN `member` AS M
			ON R.memberId = M.id
			WHERE relTypeCode = #{relTypeCode}
			AND relId = #{relId}
			ORDER BY id DESC
			LIMIT 1;
			""")
	public ResultData getReply(int loginedMemberId, String relTypeCode, int relId);

}
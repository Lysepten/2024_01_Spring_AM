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

	@Select("""
				SELECT R.*, M.nickname AS extra__writer
				FROM reply AS R
				INNER JOIN `member` AS M
				ON R.memberId = M.id
				WHERE relTypeCode = #{relTypeCode}
				AND relId = #{relId}
				ORDER BY R.id ASC;
			""")
	List<Reply> getForPrintReplies(int loginedMemberId, String relTypeCode, int relId);

	@Insert("""
				INSERT INTO reply
				SET regDate = NOW(),
				updateDate = NOW(),
				memberId = #{loginedMemberId},
				relTypeCode = #{relTypeCode},
				relId = #{relId},
				`body` = #{body}
			""")
	void writeReply(int loginedMemberId, String relTypeCode, int relId, String body);

	@Select("SELECT LAST_INSERT_ID()")
	public int getLastInsertId();

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
			WHERE R.relId = #{relId}
			AND R.memberId = #{loginedMemberId}
			AND R.id = #{id}
			ORDER BY id DESC
			LIMIT 1;
			""")
	public ResultData getReply(int loginedMemberId, int id, int relId);

	@Delete("DELETE FROM `reply` WHERE id = #{id}")
	public void deleteReply(int id);
}
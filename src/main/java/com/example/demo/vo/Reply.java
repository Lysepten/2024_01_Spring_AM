package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {
	private int id;
	private int memberId;
	private int relId;
	private String regDate;
	private String updateDate;
	private String relTypeCode;
	private String content;
	
	private String nickname;

}
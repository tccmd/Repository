package Dairies.member.dto;

import lombok.Data;

@Data
public class MemberDto {
	
	private int memberIdx;
	
	private String id;
	
	private String pw;
	
	private String tel;
	
	private String email;
	
	private String email2;
	
	private String zipNo;
	
	private String roadAddrPart1;
	
	private String roadAddrPart2;
	
	private int hitCnt;
	
	private String creatorId;
	
	private String createdDatetime;
	
	private String updaterId;
	
	private String updatedDatetime;
}

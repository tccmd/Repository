package Dairies.member.service;

import java.util.List;

import Dairies.member.dto.MemberDto;

public interface MemberService {
	
	List<MemberDto> selectMemberList() throws Exception;
	
	void insertMember(MemberDto member) throws Exception;

	MemberDto selectMemberDetail(int memberIdx) throws Exception;

	void updateMember(MemberDto member) throws Exception;

	void deleteMember(int memberIdx) throws Exception;
	
	String LOGIN_MEMBER = "loginMember";
	
	List<MemberDto> selectMembeIdList() throws Exception;
}

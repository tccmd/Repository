package Dairies.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import Dairies.member.dto.MemberDto;

@Mapper
public interface MemberMapper {
	List<MemberDto> selectMemberList() throws Exception;
	
	void insertMember(MemberDto member) throws Exception;

	MemberDto selectMemberDetail(int memberIdx) throws Exception;

	void updateHitCount(int memberIdx) throws Exception;
	
	void updateMember(MemberDto member) throws Exception;
	
	void deleteMember(int memberIdx) throws Exception;
	
	List<MemberDto> selectMembeIdList() throws Exception;
}

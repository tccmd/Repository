package Dairies.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Dairies.member.dto.MemberDto;
import Dairies.member.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public List<MemberDto> selectMemberList() throws Exception {
		return memberMapper.selectMemberList();
	}
	
	@Override
	public void insertMember(MemberDto member) throws Exception {
		memberMapper.insertMember(member);
	}

	@Override
	public MemberDto selectMemberDetail(int memberIdx) throws Exception{
		MemberDto member = memberMapper.selectMemberDetail(memberIdx);
		memberMapper.updateHitCount(memberIdx);
		
		return member;
	}
	
	@Override
	public void updateMember(MemberDto member) throws Exception {
		memberMapper.updateMember(member);
	}

	@Override
	public void deleteMember(int memberIdx) throws Exception {
		memberMapper.deleteMember(memberIdx);
	}
	
	@Override
	public List<MemberDto> selectMembeIdList() throws Exception {
		return memberMapper.selectMembeIdList();
	}
}	


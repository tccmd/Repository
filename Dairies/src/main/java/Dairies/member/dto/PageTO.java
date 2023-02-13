package Dairies.member.dto;

import java.util.ArrayList;

public class PageTO {
	
	ArrayList<MemberDto> list;
	int curPage; // 목적 : 위치. 몇 페이지인지. 
	int perPage = 3; 
	int totalCount; // 전체 로그값. 나누기 할 전체 값. 
	
	public ArrayList<MemberDto> getList() {
		return list;
	}
	public void setList(ArrayList<MemberDto> list) {
		this.list = list;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
}

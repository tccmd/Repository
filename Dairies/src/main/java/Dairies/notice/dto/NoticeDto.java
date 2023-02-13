package Dairies.notice.dto;

import java.util.List;

import lombok.Data;

@Data
public class NoticeDto {
	
	private int noticeIdx;
	
	private String title;
	
	private String contents;
	
	private int hitCnt;
	
	private String creatorId;
	
	private String createdDatetime;
	
	private String updaterId;
	
	private String updatedDatetime;
	
	private List<NoticeFileDto> fileList;
	
	private String lookFor;

}

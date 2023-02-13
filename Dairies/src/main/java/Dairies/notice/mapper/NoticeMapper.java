package Dairies.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import Dairies.notice.dto.NoticeDto;
import Dairies.notice.dto.NoticeFileDto;

@Mapper
public interface NoticeMapper {
	List<NoticeDto> selectNoticeList() throws Exception;
	
	void insertNotice(NoticeDto notice) throws Exception;

	NoticeDto selectNoticeDetail(int noticeIdx) throws Exception;
	
	List<NoticeDto> selectNoticeDetail2(int noticeIdx) throws Exception;

	void updateHitCount(int noticeIdx) throws Exception;
	
	void updateNotice(NoticeDto notice) throws Exception;
	
	void deleteNotice(int noticeIdx) throws Exception;

	void insertNoticeFileList(List<NoticeFileDto> list) throws Exception;

	List<NoticeFileDto> selectNoticeFileList(int noticeIdx) throws Exception;
	
	List<NoticeFileDto> selectNoticeFileList2() throws Exception;

	NoticeFileDto selectNoticeFileInformation(@Param("idx") int idx, @Param("noticeIdx" )int noticeIdx);
	
	List<NoticeDto> selectNoticeSearch(String lookFor) throws Exception;
}

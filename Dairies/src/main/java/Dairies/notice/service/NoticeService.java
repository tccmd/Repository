package Dairies.notice.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import Dairies.notice.dto.NoticeDto;
import Dairies.notice.dto.NoticeFileDto;

public interface NoticeService {
	List<NoticeDto> selectNoticeList() throws Exception;
	void insertNotice(NoticeDto notice, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;
	NoticeDto selectNoticeDetail(int noticeIdx) throws Exception;
	List<NoticeDto> selectNoticeDetail2(int noticeIdx) throws Exception;
	void updateNotice(NoticeDto notice) throws Exception;
	void deleteNotice(int noticeIdx) throws Exception;
	NoticeFileDto selectNoticeFileInformation(int idx, int noticeIdx) throws Exception;
	List<NoticeFileDto> selectNoticeFileList2() throws Exception;
	List<NoticeDto> selectNoticeSearch(String lookFor) throws Exception;
}

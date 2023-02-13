package Dairies.notice.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import Dairies.common.FileUtils;
import Dairies.notice.dto.NoticeDto;
import Dairies.notice.dto.NoticeFileDto;
import Dairies.notice.mapper.NoticeMapper;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeMapper noticeMapper;
	
	@Autowired
	private FileUtils fileUtils; //만든것
	
	@Override
	public List<NoticeDto> selectNoticeList() throws Exception {
		return noticeMapper.selectNoticeList();
	}
	
	@Override
	public List<NoticeFileDto> selectNoticeFileList2() throws Exception {
		return noticeMapper.selectNoticeFileList2();
	}
	
	@Override
	public void insertNotice(NoticeDto notice, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		noticeMapper.insertNotice(notice);
		List<NoticeFileDto> list = fileUtils.noticeParseFileInfo(notice.getNoticeIdx(), multipartHttpServletRequest);
		if(CollectionUtils.isEmpty(list) == false){
			noticeMapper.insertNoticeFileList(list);
		}
		if(ObjectUtils.isEmpty(multipartHttpServletRequest) == false){
			Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
			String name;
			while(iterator.hasNext()) {
				name = iterator.next();
				log.debug("File tag name : "+name);
				List<MultipartFile> list1 = multipartHttpServletRequest.getFiles(name);
				for(MultipartFile multipartFile : list1) {
					log.debug("start file information");
					log.debug("file name : "+multipartFile.getOriginalFilename());
					log.debug("file size : "+multipartFile.getSize());
					log.debug("file content type: "+multipartFile.getContentType());
					log.debug("end file information.\n");
				}
			}
		}
	}
	@Override
	public NoticeDto selectNoticeDetail(int noticeIdx) throws Exception {
		NoticeDto notice = noticeMapper.selectNoticeDetail(noticeIdx);
		List<NoticeFileDto> fileList = noticeMapper.selectNoticeFileList(noticeIdx);
		notice.setFileList(fileList);
		noticeMapper.updateHitCount(noticeIdx);
		
		return notice;
	}
	
	@Override
	public List<NoticeDto> selectNoticeDetail2(int noticeIdx) throws Exception {		
		return noticeMapper.selectNoticeDetail2(noticeIdx);
	}
	
	@Override
	public void updateNotice(NoticeDto notice) throws Exception {
		noticeMapper.updateNotice(notice);
	}
	@Override
	public void deleteNotice(int noticeIdx) throws Exception {
		noticeMapper.deleteNotice(noticeIdx);
	}
	@Override
	public NoticeFileDto selectNoticeFileInformation(int idx, int noticeIdx) throws Exception {
		return noticeMapper.selectNoticeFileInformation(idx, noticeIdx);
	}
	
	@Override
	public List<NoticeDto> selectNoticeSearch(String lookFor) throws Exception{
		return noticeMapper.selectNoticeSearch(lookFor);
	}
}
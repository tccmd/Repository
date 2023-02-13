package Dairies.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import Dairies.notice.dto.NoticeDto;
import Dairies.notice.service.NoticeService;
import Dairies.notice.dto.NoticeFileDto;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService; 
	
	@RequestMapping("/notice/openNoticeList.do")
	public ModelAndView openNoticeList() throws Exception{
		ModelAndView mv = new ModelAndView("notice/noticeList");
		
		List<NoticeDto> list = noticeService.selectNoticeList();
		mv.addObject("list", list);
		List<NoticeFileDto> file = noticeService.selectNoticeFileList2();
		mv.addObject("file", file);
		
		return mv;
	}
	
	@RequestMapping("/notice/openNoticeWrite.do")
	public String openNoticeWrite() throws Exception{
		return "notice/noticeWrite";
	}
	
	@RequestMapping("/notice/insertNotice.do")
	public String insertNotice(NoticeDto notice, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		noticeService.insertNotice(notice, multipartHttpServletRequest);
		return "redirect:/notice/openNoticeList.do";
	}
	
	@RequestMapping("/notice/openNoticeDetail.do")
	public ModelAndView openNoticeDetail(@RequestParam int noticeIdx) throws Exception{
		ModelAndView mv = new ModelAndView("notice/noticeDetail");
		
		NoticeDto notice = noticeService.selectNoticeDetail(noticeIdx);
		mv.addObject("notice", notice);
		List<NoticeDto> detail = noticeService.selectNoticeDetail2(noticeIdx);
		mv.addObject("detail", detail);
		
		return mv;
	}
	
	@RequestMapping("/notice/updateNotice.do")
	public String updateNotice(NoticeDto notice) throws Exception{
		noticeService.updateNotice(notice);
		return "redirect:/notice/openNoticeList.do";
	}
	
	@RequestMapping("/notice/deleteNotice.do")
	public String deleteNotice(int noticeIdx) throws Exception{
		noticeService.deleteNotice(noticeIdx);
		return "redirect:/notice/openNoticeList.do";
	}
	
	@RequestMapping("/notice/search.do")
	public ModelAndView selectNoticeSearch(@RequestParam(defaultValue = "") String lookFor) throws Exception{
		ModelAndView mv = new ModelAndView("notice/noticeList");
		
		List<NoticeDto> list = noticeService.selectNoticeSearch(lookFor);
		mv.addObject("list",list);
		List<NoticeFileDto> file = noticeService.selectNoticeFileList2();
		mv.addObject("file", file);
		return mv;
	}
}

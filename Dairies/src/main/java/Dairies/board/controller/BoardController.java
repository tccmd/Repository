package Dairies.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import Dairies.board.dto.BoardDto;
import Dairies.board.service.BoardService;
import Dairies.board.dto.BoardDto;
import Dairies.board.dto.BoardFileDto;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService; 
	
	@RequestMapping("/board/openBoardList.do")
	public ModelAndView openBoardList() throws Exception{
		ModelAndView mv = new ModelAndView("board/boardList");
		
		List<BoardDto> list = boardService.selectBoardList();
		mv.addObject("list", list);
		
		return mv;
	}
	
	@RequestMapping("/board/openBoardWrite.do")
	public String openBoardWrite() throws Exception{
		return "board/boardWrite";
	}
	
	@RequestMapping("/board/insertBoard.do")
	public String insertBoard(BoardDto board, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		boardService.insertBoard(board, multipartHttpServletRequest);
		return "redirect:/board/openBoardList.do";
	}
	
	@RequestMapping("/board/openBoardDetail.do")
	public ModelAndView openBoardDetail(@RequestParam int boardIdx) throws Exception{
		ModelAndView mv = new ModelAndView("board/boardDetail");
		
		BoardDto board = boardService.selectBoardDetail(boardIdx);
		mv.addObject("board", board);
		
		return mv;
	}
	
	@RequestMapping("/board/updateBoard.do")
	public String updateBoard(BoardDto board) throws Exception{
		boardService.updateBoard(board);
		return "redirect:/board/openBoardList.do";
	}
	
	@RequestMapping("/board/deleteBoard.do")
	public String deleteBoard(int boardIdx) throws Exception{
		boardService.deleteBoard(boardIdx);
		return "redirect:/board/openBoardList.do";
	}
	
	@RequestMapping("/board/search.do")
	public ModelAndView selectBoardSearch(@RequestParam(defaultValue = "") String lookFor) throws Exception{
		ModelAndView mv = new ModelAndView("board/boardList");
		
		List<BoardDto> list = boardService.selectBoardSearch(lookFor);
		mv.addObject("list",list);
		return mv;
	}
	
	@RequestMapping("/board/openBoardPage.do")
	public ModelAndView selectBoardPage(@RequestParam int pageNumber, @RequestParam int perPage) throws Exception{
		ModelAndView mv = new ModelAndView("board/boardList");
		
		List<BoardDto> page = boardService.selectBoardPage(pageNumber, perPage);
		mv.addObject("page",page);
		List<BoardDto> list = boardService.selectBoardList();
		mv.addObject("list", list);
		
		return mv;
	}
}

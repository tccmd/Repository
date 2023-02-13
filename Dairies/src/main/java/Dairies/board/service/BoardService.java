package Dairies.board.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import Dairies.board.dto.BoardDto;
import Dairies.board.dto.BoardFileDto;

public interface BoardService {
	List<BoardDto> selectBoardList() throws Exception;
	void insertBoard(BoardDto board, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;
	BoardDto selectBoardDetail(int boardIdx) throws Exception;
	void updateBoard(BoardDto board) throws Exception;
	void deleteBoard(int boardIdx) throws Exception;
	BoardFileDto selectBoardFileInformation(int idx, int boardIdx) throws Exception;
	List<BoardDto> selectBoardSearch(String lookFor) throws Exception;
	BoardDto selectBoardCount() throws Exception;
	List<BoardDto> selectBoardPage(int pageNumber, int perPage) throws Exception;
}

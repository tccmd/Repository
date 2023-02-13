package Dairies.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import Dairies.board.dto.BoardDto;
import Dairies.board.dto.BoardFileDto;

@Mapper
public interface BoardMapper {
	List<BoardDto> selectBoardList() throws Exception;
	
	void insertBoard(BoardDto board) throws Exception;

	BoardDto selectBoardDetail(int boardIdx) throws Exception;

	void updateHitCount(int boardIdx) throws Exception;
	
	void updateBoard(BoardDto board) throws Exception;
	
	void deleteBoard(int boardIdx) throws Exception;

	void insertBoardFileList(List<BoardFileDto> list) throws Exception;

	List<BoardFileDto> selectBoardFileList(int boardIdx) throws Exception;

	BoardFileDto selectBoardFileInformation(@Param("idx") int idx, @Param("boardIdx" )int boardIdx);
	
	List<BoardDto> selectBoardSearch(String lookFor) throws Exception;
	
	BoardDto selectBoardCount() throws Exception;
	
	List<BoardDto> selectBoardPage(@Param("pageNumber") int pageNumber, @Param("perPage") int perPage) throws Exception;
}

package Dairies.board.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import Dairies.board.dto.BoardDto;
import Dairies.board.dto.BoardFileDto;
import Dairies.board.mapper.BoardMapper;
import Dairies.common.FileUtils;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper boardMapper;
	
	@Autowired
	private FileUtils fileUtils; //만든것
	
	@Override
	public List<BoardDto> selectBoardList() throws Exception {
		return boardMapper.selectBoardList();
	}
	@Override
	public void insertBoard(BoardDto board, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		boardMapper.insertBoard(board);
		List<BoardFileDto> list = fileUtils.boardParseFileInfo(board.getBoardIdx(), multipartHttpServletRequest);
		if(CollectionUtils.isEmpty(list) == false){
			boardMapper.insertBoardFileList(list);
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
	public BoardDto selectBoardDetail(int boardIdx) throws Exception {
		BoardDto board = boardMapper.selectBoardDetail(boardIdx);
		List<BoardFileDto> fileList = boardMapper.selectBoardFileList(boardIdx);
		board.setFileList(fileList);
		boardMapper.updateHitCount(boardIdx);
		return board;
	}
	@Override
	public void updateBoard(BoardDto board) throws Exception {
		boardMapper.updateBoard(board);
	}
	@Override
	public void deleteBoard(int boardIdx) throws Exception {
		boardMapper.deleteBoard(boardIdx);
	}
	@Override
	public BoardFileDto selectBoardFileInformation(int idx, int boardIdx) throws Exception {
		return boardMapper.selectBoardFileInformation(idx, boardIdx);
	}	
	@Override
	public List<BoardDto> selectBoardSearch(String lookFor) throws Exception{
		return boardMapper.selectBoardSearch(lookFor);
	}
	@Override
	public BoardDto selectBoardCount() throws Exception {
		return boardMapper.selectBoardCount();
	}
	@Override
	public List<BoardDto> selectBoardPage(int pageNumber, int perPage) throws Exception {
		return boardMapper.selectBoardPage(pageNumber, perPage);
	}
}
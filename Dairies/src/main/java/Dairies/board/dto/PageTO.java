package Dairies.board.dto;

import java.util.ArrayList;

import lombok.Data;

@Data
public class PageTO {
	ArrayList<BoardDto> list;
	int pageNumber;
	int perPage = 3; 
	int totalCount;
}

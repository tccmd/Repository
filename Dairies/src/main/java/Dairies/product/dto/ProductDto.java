package Dairies.product.dto;

import java.util.List;

import lombok.Data;

@Data
public class ProductDto {
	
	private int productIdx;
	
	private String title;
	
	private String contents;
	
	private int hitCnt;
	
	private String creatorId;
	
	private String createdDatetime;
	
	private String updaterId;
	
	private String updatedDatetime;
	
	private List<ProductFileDto> fileList;

}

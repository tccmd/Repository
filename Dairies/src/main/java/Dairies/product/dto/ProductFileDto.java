package Dairies.product.dto;

import lombok.Data;

@Data
public class ProductFileDto {
	
	private int idx;
	
	private int productIdx;
	
	private String originalFileName;
	
	private String storedFilePath;
	
	private long fileSize;
}

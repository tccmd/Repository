package Dairies.product.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import Dairies.product.dto.ProductDto;
import Dairies.product.dto.ProductFileDto;

public interface ProductService {
	List<ProductDto> selectProductList() throws Exception;
	void insertProduct(ProductDto product, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;
	ProductDto selectProductDetail(int productIdx) throws Exception;
	void updateProduct(ProductDto product) throws Exception;
	void deleteProduct(int productIdx) throws Exception;
	List<ProductFileDto> selectProductFileList2() throws Exception;
	ProductFileDto selectProductFileInformation(int idx, int productIdx) throws Exception;
}

package Dairies.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import Dairies.product.dto.ProductDto;
import Dairies.product.dto.ProductFileDto;

@Mapper
public interface ProductMapper {
	List<ProductDto> selectProductList() throws Exception;
	
	void insertProduct(ProductDto product) throws Exception;

	ProductDto selectProductDetail(int productIdx) throws Exception;

	void updateHitCount(int productIdx) throws Exception;
	
	void updateProduct(ProductDto product) throws Exception;
	
	void deleteProduct(int productIdx) throws Exception;

	void insertProductFileList(List<ProductFileDto> list) throws Exception;

	List<ProductFileDto> selectProductFileList(int productIdx) throws Exception;
	
	List<ProductFileDto> selectProductFileList2() throws Exception;

	ProductFileDto selectProductFileInformation(@Param("idx") int idx, @Param("productIdx" )int productIdx);
}

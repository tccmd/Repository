package Dairies.product.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import Dairies.product.dto.ProductDto;
import Dairies.product.dto.ProductFileDto;
import Dairies.product.mapper.ProductMapper;
import Dairies.common.FileUtils;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper productMapper;
	
	@Autowired
	private FileUtils fileUtils; //만든것
	
	@Override
	public List<ProductDto> selectProductList() throws Exception {
		return productMapper.selectProductList();
	}
	
	@Override
	public List<ProductFileDto> selectProductFileList2() throws Exception {
		return productMapper.selectProductFileList2();
	}
	
	@Override
	public void insertProduct(ProductDto product, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		productMapper.insertProduct(product);
		List<ProductFileDto> list = fileUtils.productParseFileInfo(product.getProductIdx(), multipartHttpServletRequest);
		if(CollectionUtils.isEmpty(list) == false){
			productMapper.insertProductFileList(list);
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
	public ProductDto selectProductDetail(int productIdx) throws Exception {
		ProductDto product = productMapper.selectProductDetail(productIdx);
		List<ProductFileDto> fileList = productMapper.selectProductFileList(productIdx);
		product.setFileList(fileList);
		productMapper.updateHitCount(productIdx);
		return product;
	}
	@Override
	public void updateProduct(ProductDto product) throws Exception {
		productMapper.updateProduct(product);
	}
	@Override
	public void deleteProduct(int productIdx) throws Exception {
		productMapper.deleteProduct(productIdx);
	}
	@Override
	public ProductFileDto selectProductFileInformation(int idx, int productIdx) throws Exception {
		return productMapper.selectProductFileInformation(idx, productIdx);
	}
}
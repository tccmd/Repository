package Dairies.product.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import Dairies.product.dto.ProductDto;
import Dairies.product.dto.ProductFileDto;
import Dairies.product.service.ProductService;
@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService; 
	
	@RequestMapping("/product/openProductList.do")
	public ModelAndView openProductList() throws Exception{
		ModelAndView mv = new ModelAndView("product/productList");
		
		List<ProductDto> list = productService.selectProductList();
		mv.addObject("list", list);
		List<ProductFileDto> file = productService.selectProductFileList2();
		mv.addObject("file", file);
		
		return mv;
	}
	
	@RequestMapping("/product/openProductWrite.do")
	public String openProductWrite() throws Exception{
		return "product/productWrite";
	}
	
	@RequestMapping("/product/insertProduct.do")
	public String insertProduct(ProductDto product, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
		productService.insertProduct(product, multipartHttpServletRequest);
		return "redirect:/product/openProductList.do";
	}
	
	@RequestMapping("/product/openProductDetail.do")
	public ModelAndView openProductDetail(@RequestParam int productIdx) throws Exception{
		ModelAndView mv = new ModelAndView("product/productDetail");
		
		ProductDto product = productService.selectProductDetail(productIdx);
		mv.addObject("product", product);
		
		return mv;
	}
	
	@RequestMapping("/product/updateProduct.do")
	public String updateProduct(ProductDto product) throws Exception{
		productService.updateProduct(product);
		return "redirect:/product/openProductList.do";
	}
	
	@RequestMapping("/product/deleteProduct.do")
	public String deleteProduct(int productIdx) throws Exception{
		productService.deleteProduct(productIdx);
		return "redirect:/product/openProductList.do";
	}
	
	@RequestMapping("/product/downloadProductFile.do")
	public void downloadProductFile(@RequestParam int idx, @RequestParam int productIdx, HttpServletResponse response) throws Exception{
		ProductFileDto productFile = productService.selectProductFileInformation(idx, productIdx);
		if(ObjectUtils.isEmpty(productFile) == false) {
			String fileName = productFile.getOriginalFileName();
			
			byte[] files = FileUtils.readFileToByteArray(new File(productFile.getStoredFilePath()));
			
			response.setContentType("application/octet-stream");
			response.setContentLength(files.length);
			response.setHeader("Content-Disposition", "attachment; fileName=\"" + URLEncoder.encode(fileName,"UTF-8")+"\";");
			response.setHeader("Content-Transfer-Encoding", "binary");
			
			response.getOutputStream().write(files);
			response.getOutputStream().flush();
			response.getOutputStream().close();
		}
	}
}

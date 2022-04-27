package com.mungeno.app.model.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mungeno.app.model.BuylistVO;
import com.mungeno.app.model.MemberVO;
import com.mungeno.app.model.ProductService;
import com.mungeno.app.model.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	public void insertProduct(ProductVO vo) {
		productDAO.insertProduct(vo);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		return productDAO.getProduct(vo);
	}

	@Override
	public ArrayList<ProductVO> getProductList(ProductVO vo,int listCnt) {
		return productDAO.getProductList(vo,listCnt);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		productDAO.updateProduct(vo);
	}

	@Override
	public void deleteProduct(ProductVO vo) {
		productDAO.deleteProduct(vo);
	}

	@Override
	public void buyProduct(ProductVO vo,MemberVO mvo) {
		productDAO.buyProduct(vo,mvo);
	}

	@Override
	public ArrayList<BuylistVO> getBuylist(BuylistVO vo) {
		return productDAO.getBuylist(vo);
	}

	@Override
	public void deleteBuylist(BuylistVO vo) {
		productDAO.deleteBuylist(vo);
	}
}
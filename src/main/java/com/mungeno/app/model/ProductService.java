package com.mungeno.app.model;

import java.util.ArrayList;

public interface ProductService {
	public void insertProduct(ProductVO vo); // 제품등록
	public ProductVO getProduct(ProductVO vo); // 제품상세
	public ArrayList<ProductVO> getProductList(ProductVO vo,int listCnt); // 제품목록
	public void updateProduct(ProductVO vo); // 제품수정
	public void deleteProduct(ProductVO vo); // 제품삭제
	public void buyProduct(ProductVO vo, MemberVO mvo); // 제품판매&구매이력등록
	public ArrayList<BuylistVO> getBuylist(BuylistVO vo); // 구매이력목록
	public void deleteBuylist(BuylistVO vo); // 구매이력삭제
}
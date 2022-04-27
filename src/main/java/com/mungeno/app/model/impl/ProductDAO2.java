package com.mungeno.app.model.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mungeno.app.model.BuylistVO;
import com.mungeno.app.model.ProductVO;

// @Repository("productDAO")
public class ProductDAO2 {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private final String PRODUCT_SELECTONE="select * from product where pid=?";
	private final String PRODUCT_SELECTALL="select * from product by pid desc";
	private final String PRODUCT_INSERT="insert into product(pid,pname,price,pimg,pcontent) values ((select nvl(max(pid),1000)+1 from product),?,?,?,?)";
	private final String PRODUCT_UPDATE="update product set pname=?,price=?,pstock=?,pstate=?,pimg=?,pcontent=? where pid=?";
	private final String PRODUCT_UPDATE_SALE="update product set pstock=pstock-? where pid=?";
	private final String PRODUCT_DELETE="delete from product where pid=?";
	private final String BUYLIST_SELECTALL="select * from buylist";
	private final String BUYLIST_INSERT="insert into buylist(bid,mid,pid) values ((select nvl(max(bid),1000)+1 from buylist),?,?)";
	private final String BUYLIST_DELETE="delete from buylist where bid=?";

	// 제품등록
	public void insertProduct(ProductVO vo) {
		System.out.println("ProductDAO2 Log : insertProduct() process");
		jdbcTemplate.update(PRODUCT_INSERT,vo.getPname(),vo.getPrice(),vo.getPimg(),vo.getPcontent());
	}
	// 제품상세
	public ProductVO getProduct(ProductVO vo) {
		System.out.println("ProductDAO2 Log : getProduct() process");
		Object[] args= {vo.getPid()};
		return jdbcTemplate.queryForObject(PRODUCT_SELECTONE, args, new ProductRowMapper());
	}
	// 제품목록&검색
	public List<ProductVO> getProductList(ProductVO vo,int listCnt) {
		System.out.println("ProductDAO2 Log : getProductList() process");
		return jdbcTemplate.query(PRODUCT_SELECTALL, new ProductRowMapper());
	}
	// 제품수정
	public void updateProduct(ProductVO vo) {
		System.out.println("ProductDAO2 Log : updateProduct() process");
		jdbcTemplate.update(PRODUCT_UPDATE,vo.getPname(),vo.getPrice(),vo.getPstock(),vo.getPstate(),vo.getPimg(),vo.getPcontent(),vo.getPid());
	}
	// 제품삭제
	public void deleteProduct(ProductVO vo) {
		System.out.println("ProductDAO2 Log : deleteProduct() process");
		jdbcTemplate.update(PRODUCT_DELETE,vo.getPid());
	}
	// 제품판매&구매이력등록
	public void buyProduct(ProductVO vo) {
		System.out.println("ProductDAO2 Log : buyProduct() process");
		BuylistVO bvo=new BuylistVO();
		int pstock=1; // 구매개수는 현재는 1개로 고정
		jdbcTemplate.update(PRODUCT_UPDATE_SALE,pstock,vo.getPid());
		jdbcTemplate.update(BUYLIST_INSERT,bvo.getMid(),bvo.getPid());
	}
	// 구매이력목록
	public List<BuylistVO> getBuylist(BuylistVO vo) {
		System.out.println("ProductDAO2 Log : getBuylist() process");
		return jdbcTemplate.query(BUYLIST_SELECTALL, new BuylistRowMapper());
		
	}
	// 구매이력삭제
	public void deleteBuylist(BuylistVO vo) {
		System.out.println("ProductDAO2 Log : deleteBuylist() process");
		jdbcTemplate.update(BUYLIST_DELETE,vo.getBid());
	}
}

class ProductRowMapper implements RowMapper<ProductVO> {
	@Override
	public ProductVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductVO data=new ProductVO();
		data.setPid(rs.getInt("pid"));
		data.setPname(rs.getString("pname"));
		data.setPstock(rs.getInt("pstock"));
		data.setPstate(rs.getInt("pstate"));
		data.setPimg(rs.getString("pimg"));
		data.setPcontent(rs.getString("pcontent"));
		return data;
	}	
}
class BuylistRowMapper implements RowMapper<BuylistVO> {
	@Override
	public BuylistVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BuylistVO data=new BuylistVO();
		data.setBid(rs.getInt("bid"));
		data.setMid(rs.getString("mid"));
		data.setPid(rs.getInt("pid"));
		data.setBdate(rs.getDate("bdate"));
		data.setTransdate(rs.getString("transdate"));
		return data;
	}	
}
package com.mungeno.app.model.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.mungeno.app.common.JDBCUtil;
import com.mungeno.app.model.BuylistVO;
import com.mungeno.app.model.MemberVO;
import com.mungeno.app.model.ProductVO;

@Repository("productDAO")
public class ProductDAO {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private final String PRODUCT_SELECTONE="select * from mungeno_product where pid=?";
	private final String PRODUCT_SELECTALL="select * from mungeno_product";
	private final String PRODUCT_SELECTALL_SEARCH="select * from mungeno_product where pname like '%'||?||'%'";
	private final String PRODUCT_INSERT="insert into mungeno_product(pid,pname,price,pimg,pcontent) values ((select nvl(max(pid),1000)+1 from mungeno_product),?,?,?,?)";
	private final String PRODUCT_UPDATE="update mungeno_product set pname=?,price=?,pstock=?,pstate=?,pimg=?,pcontent=? where pid=?";
	private final String PRODUCT_UPDATE_SALE="update mungeno_product set pstock=pstock-? where pid=?";
	private final String PRODUCT_DELETE="delete from mungeno_product where pid=?";
	private final String BUYLIST_SELECTALL="select * from mungeno_buylist where mid=?";
	private final String BUYLIST_INSERT="insert into mungeno_buylist(bid,mid,pid,pname) values ((select nvl(max(bid),1000)+1 from mungeno_buylist),?,?,?)";
	private final String BUYLIST_DELETE="delete from mungeno_buylist where bid=?";

	// 제품등록
	public void insertProduct(ProductVO vo) {
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(PRODUCT_INSERT);
			pstmt.setString(1, vo.getPname());
			pstmt.setInt(2, vo.getPrice());
			pstmt.setString(3, vo.getPimg());
			pstmt.setString(4, vo.getPcontent());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
	}

	// 제품상세
	public ProductVO getProduct(ProductVO vo) {
		ProductVO data=null;
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(PRODUCT_SELECTONE);
			pstmt.setInt(1, vo.getPid());
			rs=pstmt.executeQuery();

			if(rs.next()) {
				data=new ProductVO();
				data.setPid(rs.getInt("pid"));
				data.setPname(rs.getString("pname"));
				data.setPrice(rs.getInt("price"));
				data.setPstock(rs.getInt("pstock"));
				data.setPstate(rs.getInt("pstate"));
				data.setPimg(rs.getString("pimg"));
				data.setPcontent(rs.getString("pcontent"));
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
		return data;
	}

	// 제품목록&검색
	public ArrayList<ProductVO> getProductList(ProductVO vo,int listCnt) {
		ArrayList<ProductVO> datas=new ArrayList<ProductVO>();
		conn=JDBCUtil.connect();
		try {
			if(vo.getPname()!=null) {
				// 제품명 검색
				System.out.println("ProductName");
				if(listCnt==0) { // 데이터 개수 파악
					pstmt=conn.prepareStatement(PRODUCT_SELECTALL_SEARCH);
					pstmt.setString(1,vo.getPname());
				}else { //페이징 처리할 만큼의 정보 받기
					pstmt=conn.prepareStatement(PRODUCT_SELECTALL_SEARCH+" where rownum<=?");
					pstmt.setString(1,vo.getPname());
					pstmt.setInt(2, listCnt);
				}				
			}
			// 전체목록
			else {
				pstmt=conn.prepareStatement(PRODUCT_SELECTALL);
			}

			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				ProductVO data=new ProductVO(); 
				data = new ProductVO();
				data.setPid(rs.getInt("pid"));
				data.setPname(rs.getString("pname"));
				data.setPrice(rs.getInt("price"));
				data.setPstock(rs.getInt("pstock"));
				data.setPstate(rs.getInt("pstate"));
				data.setPimg(rs.getString("pimg"));
				data.setPcontent(rs.getString("pcontent"));
				datas.add(data);
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
		return datas;
	}

	// 제품수정
	public void updateProduct(ProductVO vo) {
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(PRODUCT_UPDATE);
			pstmt.setString(1, vo.getPname());
			pstmt.setInt(2, vo.getPrice());
			pstmt.setInt(3, vo.getPstock());
			pstmt.setInt(4, vo.getPstate());
			pstmt.setString(5, vo.getPimg());
			pstmt.setString(6, vo.getPcontent());
			pstmt.setInt(7, vo.getPid());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
	}

	// 제품삭제
	public void deleteProduct(ProductVO vo) {
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(PRODUCT_DELETE);
			pstmt.setInt(1, vo.getPid());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
	}

	// 제품판매&구매이력등록
	public void buyProduct(ProductVO vo, MemberVO mvo) {
		conn=JDBCUtil.connect();
		int buycnt=1; // 구매개수
		try {
			conn.setAutoCommit(false); // 트랜잭션
			
			// 재고감소
			pstmt=conn.prepareStatement(PRODUCT_UPDATE_SALE);
			pstmt.setInt(1, buycnt);
			pstmt.setInt(2, vo.getPid());
			pstmt.executeUpdate();
			
			// 구매이력등록
			pstmt=conn.prepareStatement(BUYLIST_INSERT);
			pstmt.setString(1, mvo.getMid());
			pstmt.setInt(2, vo.getPid());
			pstmt.setString(3, vo.getPname());
			pstmt.executeUpdate();

			conn.commit();
			conn.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn);
	}

	// 구매이력목록
	public ArrayList<BuylistVO> getBuylist(BuylistVO vo) {
		ArrayList<BuylistVO> datas=new ArrayList<BuylistVO>();
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(BUYLIST_SELECTALL);
			pstmt.setString(1, vo.getMid());
			ResultSet rs=pstmt.executeQuery();

			// 날짜 표기방식 설정
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			while(rs.next()) {
				BuylistVO data=new BuylistVO(); 
				data = new BuylistVO();
				data.setBid(rs.getInt("bid"));
				data.setMid(rs.getString("mid"));
				data.setPid(rs.getInt("pid"));
				data.setPname(rs.getString("pname"));
				data.setTransdate(sdf.format(rs.getDate("bdate")));
				datas.add(data);
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.disconnect(pstmt, conn);
		}
		return datas;
	}

	// 구매이력삭제
	public void deleteBuylist(BuylistVO vo) {
		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(BUYLIST_DELETE);
			pstmt.setInt(1, vo.getBid());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JDBCUtil.disconnect(pstmt, conn);
	}
}
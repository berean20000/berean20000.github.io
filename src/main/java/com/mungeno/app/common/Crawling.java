package com.mungeno.app.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.mungeno.app.model.ProductVO;

public class Crawling {
	static Connection conn;
	static PreparedStatement pstmt;

	// 초기 데이터 유무 체크
	static final String datacheck = "select pid from mungeno_product";
	// 제품 등록
	static final String PRODUCT_INSERT = "insert into mungeno_product(pid,pname,price,pstock,pstate,pimg,pcontent)"
			+" values ((select nvl(max(pid),1000)+1 from mungeno_product),?,?,10,1,?,?)";

	public static void start() throws IOException {
		// 크롤링할 첫번째 페이지
		int subURL=162;
		// 크롤링할 마지막 페이지
		int subURLend=170;

		conn=JDBCUtil.connect();
		try {
			pstmt=conn.prepareStatement(datacheck);
			ResultSet rs=pstmt.executeQuery(datacheck);
			if(rs.next()!=false) {
				System.out.println("Sample Data exist");
				System.out.println("Data Crawling not Process");
			}
			else {
				for(int i=subURL;i<=subURLend;i++) {
					System.out.println("Data Crawling Process");
					System.out.println(i+"번 제품");

					String URL = "https://keiren2022.tistory.com/"+i;
					Document doc = Jsoup.connect(URL).get();

					// 제품명
					Elements nele = doc.select("h1.pname");
					String pname=nele.text();
					System.out.println("제품명 : "+pname);

					// 제품가격
					Elements pele = doc.select("span.price");
					int price=Integer.parseInt(pele.text());
					System.out.println("제품가격 : "+price);

					// 제품이미지
					Elements iele = doc.select("img.pimg");
					String pimg=iele.attr("src");
					System.out.println("사진경로 : "+pimg);

					// 제품설명
					Elements cele = doc.select("p.pcontent");
					String pcontent=cele.text();
					System.out.println("제품설명 : "+pcontent);

					// 제품 DB에 삽입
					ProductVO vo=new ProductVO();

					vo.setPname(pname);
					vo.setPrice(price);
					vo.setPimg(pimg);
					vo.setPcontent(pcontent);

					try {
						pstmt=conn.prepareStatement(PRODUCT_INSERT);
						pstmt.setString(1, vo.getPname());
						pstmt.setInt(2, vo.getPrice());
						pstmt.setString(3, vo.getPimg());
						pstmt.setString(4, vo.getPcontent());
						pstmt.executeUpdate();

						System.out.println("Crawling Log: Product Data Insert Complete");
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
}
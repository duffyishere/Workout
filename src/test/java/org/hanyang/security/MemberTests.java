package org.hanyang.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"
})
@Log4j
public class MemberTests {

	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder passwordEncoder;
	
	@Setter(onMethod_ = @Autowired)
	private DataSource dataSource;
	
	@Test
	public void testInsert() {
		
		String sql = "insert into tbl_member(userid, userpw) values (?,?)";
		
		for(int i=0; i < 100; i++) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = dataSource.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(2, passwordEncoder.encode("pw"+i));
				
				if(i<80) {
					pstmt.setString(1, "user"+i);
				}
				else if(i<90) {
					pstmt.setString(1, "manager"+i);
				}
				else {
					pstmt.setString(1, "admin"+i);
				}
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				if(pstmt != null) try {pstmt.close();} catch (Exception e) {e.printStackTrace();}

				if(conn != null) try {conn.close();} catch (Exception e) {e.printStackTrace();}
			}
		}//end for
	}
	
	@Test
	public void testInsertAuth() {
		String sql = "insert into tbl_member_auth(userid, auth) values (?,?)";
		
		for(int i=0; i < 100; i++) {
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			
			try {
				conn = dataSource.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				if(i<80) {
					pstmt.setString(1, "user"+i);
					pstmt.setString(2, "ROLE_USER");
				}
				else if(i<90) {
					pstmt.setString(1, "manager"+i);
					pstmt.setString(2, "ROLE_MEMBER");
				}
				else {
					pstmt.setString(1, "admin"+i);
					pstmt.setString(2, "ROLE_ADMIN");
				}
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				if(pstmt != null) try {pstmt.close();} catch (Exception e) {e.printStackTrace();}

				if(conn != null) try {conn.close();} catch (Exception e) {e.printStackTrace();}
			}
		}//end for
	}
	
	@Test
	public void test() {
		
		log.info(passwordEncoder.encode("pw1"));
	}
	
	
	public void solution01() {
		Scanner sc = new Scanner(System.in);
        int x = sc.nextInt();

        int count=0;
        int increase=0;
        int index;

        while (true){
            increase++; //1 2 3 4 5
            count = count + increase; //1 3 6 10 15

            if(count >= x){ //대각선 줄 중에 있을 경우
                System.out.println(count);
                break;
            }
        }

        //몇 번째 줄에 속해있느지
        index = x - (count-increase); // 4

        System.out.println(increase+1 - index +"/"+index);
	}
	
}

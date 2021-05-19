package customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//데이터베이스 정보
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userId="system";
	String userPw="ks200112";
	
	
	
	public UserDAO() {
		
		
		
		try {
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userId, userPw);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//회원가입 메소드
	public int join(UserDTO user) {
		

		try {
			
			
			String inSql = "INSERT INTO CUSTOMER VALUES(?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(inSql);
			pstmt.setString(1, user.getCus_id());
			pstmt.setString(2, user.getCus_pw());
			pstmt.setString(3, user.getCus_name());
			pstmt.setString(4, user.getCus_add());
			pstmt.setString(5, user.getCus_phone());
			pstmt.setString(6, user.getCus_email());
			
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}//end join
	
	
	//로그인 메소드
	public int login(String cus_id, String cus_pw) {
		String logSql = "SELECT cus_pw FROM CUSTOMER WHERE cus_id = ?";
		try {
			pstmt = conn.prepareStatement(logSql);
			pstmt.setString(1, cus_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(cus_pw)) {
					return 1;//로그인 성공
				} else {
					return 0; //비밀번호 불일치
				}
					
			}
			return -1;//아이디가 없음
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}//end login
	
	
	
	

}

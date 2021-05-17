package customerService;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CsDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//데이터베이스 정보
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userId="system";
	String userPw="ks200112";
	
	
	
	public CsDAO() {
		
		
		
		try {
			
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userId, userPw);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	

}

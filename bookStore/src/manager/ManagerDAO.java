package manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ManagerDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	//�����ͺ��̽� ����
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String userId="system";
	String userPw="ks200112";




	public ManagerDAO() {



		try {

			Class.forName(driver);
			conn = DriverManager.getConnection(url, userId, userPw);

		}catch(Exception e) {
			e.printStackTrace();
		}
	}



	//�α��� �޼ҵ�
	public int managerLogin(String manager_id, String manager_pw) {
		String logSql = "SELECT manager_pw FROM CUSTOMER WHERE manager_id = ?";
		try {
			pstmt = conn.prepareStatement(logSql);
			pstmt.setString(1, manager_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(manager_pw)) {
					return 1;//�α��� ����
				} else {
					return 0; //��й�ȣ ����ġ
				}

			}
			return -1;//���̵� ����

		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //�����ͺ��̽� ����
	}//end login




}

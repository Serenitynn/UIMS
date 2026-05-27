package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbconn {
	
	public Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new SQLException("未找到 MySQL 驱动，请确认 mysql-connector 已放入 WEB-INF/lib。", e);
		}
		String url = "jdbc:mysql://localhost:3306/mydatabase?useUnicode=true&characterEncoding=UTF-8&serverTimezone=Asia/Shanghai&useSSL=false&allowPublicKeyRetrieval=true";
		return DriverManager.getConnection(url, "root", "root");
	}
	
	public void closeAll(Connection conn, Statement stat, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (stat != null) {
			try {
				stat.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

package db;

import javax.sql.DataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

import model.User;

public class UserDBUtil {
	
	private DataSource datasource;
	
	public UserDBUtil(DataSource datasource) {
		this.datasource = datasource;
	}
	
	
	public void insertUser(User user) throws Exception {
		
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		String userName = user.getUserName();
		String email = user.getEmail();
		String password = user.getPassword();
		
		try {
			
			conn =  this.datasource.getConnection();
			
			String sql = String.format("INSERT INTO users (userName,email,password) VALUES('%s','%s','%s')",userName,email,password);
			
			stmt = conn.createStatement();
			
			stmt.executeUpdate(sql);
			
		} finally {
			// TODO: handle finally clause
			close(conn,stmt,pstmt,res);
		}
	}
	
	
	public User findUser(String email) throws Exception {
		
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		User tempUser = null;
		
		
		try {
			
			conn =  this.datasource.getConnection();
			
			String sql = String.format("SELECT * FROM users WHERE email = ?");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			
			res = pstmt.executeQuery();
			
			if(res.next()) {
				
				String userName = res.getString("userName");
				int userId = res.getInt("id");
				String tempEmail = res.getString("email");
				String password = res.getString("password");
				
				tempUser = new User(userId,userName,tempEmail,password);
			}
			
			return tempUser;
			
		} finally {
			// TODO: handle finally clause
			close(conn,stmt,pstmt,res);
		}
	}
	
	
	private void close(Connection conn, Statement stmt, PreparedStatement pstmt, ResultSet res) {
		
		try {
			
			if(conn != null){				
				conn.close();
			}
			
			if(stmt != null) {				
				stmt.close();
			}
			
			if(pstmt != null) {				
				pstmt.close();
			}
			
			if(res != null) {				
				res.close();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}	
	}
}
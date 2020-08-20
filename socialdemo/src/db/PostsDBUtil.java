package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import model.Post;
import model.User;

public class PostsDBUtil {
	private DataSource datasource;

	public PostsDBUtil(DataSource datasource) {
		this.datasource = datasource;
	}

	public void insertPost(Post post) throws Exception {

		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;

		String postTitle = post.getPostTitle();
		String postContent = post.getPostContent();

		int userID = post.getUserID();
		String userName = post.getUserName();

		try {

			conn = this.datasource.getConnection();

			String sql = String.format(
					"INSERT INTO posts (postTitle,postBody,userID,userName) VALUES('%s','%s','%d','%s')",
					postTitle, postContent, userID, userName);

			stmt = conn.createStatement();

			stmt.executeUpdate(sql);

		} finally {
			// TODO: handle finally clause
			close(conn, stmt, pstmt, res);
		}
	}

	public void updatePost(String postTitle,String postContent, int postID, int userID) throws Exception {

		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;



		try {

			conn = this.datasource.getConnection();

			String sql = String.format("UPDATE posts " + " SET  postTitle=%s,postContent=%s WHERE postID=%d", postTitle,
					postContent, postID);

			stmt = conn.createStatement();

			stmt.executeUpdate(sql);

		} finally {
			// TODO: handle finally clause
			close(conn, stmt, pstmt, res);
		}
	}

	public void likePost(int postID, User user) throws Exception {

		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;

		try {
			conn = this.datasource.getConnection();

			String sql = String.format("SELECT * FROM likes WHERE postID = %d AND userID = %d", postID,
					user.getUserID());

			pstmt = conn.prepareStatement(sql);

			res = pstmt.executeQuery();

			if (res.next()) {

				if (res.getBoolean("liked"))
					return;
				else {
					String updateLiked = String.format("UPDATE likes SET liked=%b where postID=%d and userID=%d ", true,
							postID, user.getUserID(), user.getUserID());

					pstmt = conn.prepareStatement(updateLiked);

					res = pstmt.executeQuery();
				}
			}

			String insertLike = String.format("INSERT INTO likes liked, postID, userID VALUES (%b,%d,%d)", true,postID,
					user.getUserID());

			pstmt = conn.prepareStatement(insertLike);

			res = pstmt.executeQuery();

		} finally {
			// TODO: handle finally clause
			close(conn, stmt, pstmt, res);
		}
	}
	
	public void unlikePost(int postID, User user) throws Exception {

		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;

		try {
			conn = this.datasource.getConnection();

			String updateLiked = String.format("UPDATE likes SET liked=%b where postID=%d and userID=%d ", false,
					postID, user.getUserID(), user.getUserID());

			pstmt = conn.prepareStatement(updateLiked);

			res = pstmt.executeQuery();

			

		} finally {
			// TODO: handle finally clause
			close(conn, stmt, pstmt, res);
		}
	}
	
	
	

	public void deletePost(int postID) throws Exception {

		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;

		try {

			conn = this.datasource.getConnection();

			String sql = String.format("DELETE FROM posts WHERE postID=%d", postID);

			stmt = conn.createStatement();

			stmt.executeUpdate(sql);

		} finally {
			// TODO: handle finally clause
			close(conn, stmt, pstmt, res);
		}
	}

	public ArrayList<Post> getAllPosts() throws Exception {

		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;

		ArrayList<Post> tempPosts = new ArrayList<Post>();

		try {

			conn = this.datasource.getConnection();

			String sql = String.format("SELECT posts.postID,postTitle,postBody,posts.userID,posts.userName, COUNT(liked) as likes FROM posts left join likes on likes.postID = posts.postID group by posts.postID");

			pstmt = conn.prepareStatement(sql);

			res = pstmt.executeQuery();
			while (res.next() != false) {
				int postID = res.getInt("postID");
				String postTitle = res.getString("postTitle");
				String postContent = res.getString("postBody");
				int userID = res.getInt("userID");
				String userName = res.getString("userName");
				int likes = res.getInt("likes");
				
				System.out.println(postID);
				tempPosts.add(new Post(postID, postTitle, postContent, userName, userID, likes));
			}

			return tempPosts;

		} finally {
			// TODO: handle finally clause
			close(conn, stmt, pstmt, res);
		}
	}

	public ArrayList<Post> getAllPostsByUser(int userID) throws Exception {

		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;

		ArrayList<Post> tempPosts = new ArrayList<Post>();

		try {

			conn = this.datasource.getConnection();

			String sql = String.format(
					"SELECT posts.postID,postTitle,postBody,posts.userID,posts.userName, COUNT(liked) as likes FROM posts inner join likes " + "on likes.postID = posts.postID WHERE posts.userID=%d", userID);

			pstmt = conn.prepareStatement(sql);

			res = pstmt.executeQuery();
			while (res.next() != false) {
				int postID = res.getInt("postID");
				String postTitle = res.getString("postTitle");
				String postContent = res.getString("postBody");
				String userName = res.getString("userName");
				int likes = res.getInt("likes");
				System.out.println(postTitle);
				tempPosts.add(new Post(postID, postTitle, postContent, userName, userID, likes));
			}

			return tempPosts;

		} finally {
			// TODO: handle finally clause
			close(conn, stmt, pstmt, res);
		}
	}

	private void close(Connection conn, Statement stmt, PreparedStatement pstmt, ResultSet res) {

		try {

			if (conn != null) {
				conn.close();
			}

			if (stmt != null) {
				stmt.close();
			}

			if (pstmt != null) {
				pstmt.close();
			}

			if (res != null) {
				res.close();
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}

package model;

import java.util.ArrayList;

import db.PostsDBUtil;
import db.UserDBUtil;

public class User {
	int userID;
	String userName;
	String email;
	String password;
	ArrayList<Post> userPosts;

	public User(int userID, String userName, String email, String password) {
		this.userID = userID;
		this.userName = userName;
		this.email = email;
		this.password = password;

	}

	public User(String userName, String email, String password) {
		this.userName = userName;
		this.email = email;
		this.password = password;
	}

	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public int getUserID() {
		return userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public boolean login(UserDBUtil userdb) {
		try {

			User tempUser = userdb.findUser(this.email);

			if (tempUser != null) {
				if (this.password.equals(tempUser.getPassword())) {
					this.userName = tempUser.getUserName();
					this.password = null;
					return true;
				}
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

	public boolean createUser(UserDBUtil userdb) {
		try {
			userdb.insertUser(this);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean createPost(PostsDBUtil postsdb,Post post) {
		try {
			postsdb.insertPost(post);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean getUserPosts(PostsDBUtil postsdb) {
		try {
			this.userPosts =  postsdb.getAllPostsByUser(this.userID);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

	
}
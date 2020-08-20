package model;

import db.PostsDBUtil;

public class Post {
	int postID;
	String postTitle;
	String postContent;
	String userName;
	int userID;
	int likes;
	boolean liked = false;

	public Post(int postID, String postTitle, String postContent, String userName, int userID, int likes) {
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userID = userID;
		this.userName = userName;
		this.likes = likes;
	}

	public Post(String postTitle, String postContent, String userName, int userID) {
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.userID = userID;
		this.userName = userName;
	}

	public int getLikes() {
		return likes;
	}

	public String getPostContent() {
		return postContent;
	}

	public int getPostID() {
		return postID;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public int getUserID() {
		return userID;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public void setPostID(int postID) {
		this.postID = postID;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public boolean createPost(PostsDBUtil postsdb) {
		try {
			postsdb.insertPost(this);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}

	public boolean deletePost() {
		return true;
	}

	public boolean editPost() {
		return true;
	}

	public boolean setLike() {
		
		this.liked = !this.liked;
		return this.liked;
	}

}

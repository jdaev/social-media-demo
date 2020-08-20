<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Posts</title>
</head>
<body>

	<form action="CreatePost" method="post">
		<input type="text" name="postTitle" placeholder="Post Title"> <input
			type="text" name="postContent" placeholder="Write something...">
		<input type="submit" value="Post">

	</form>

	<%
		ArrayList<Post> posts = new ArrayList<Post>();
		User user = (User) session.getAttribute("user");
	
		 posts = (ArrayList<Post>) session.getAttribute("allPosts");
		
		if (posts == null) {

		} else {

			
			for (Post post : posts) {

				out.println(post.getPostTitle() + " " + post.getPostContent() + " " + post.getLikes());

				if (post.getUserID()==user.getUserID()) {

					out.println("<a href='EditPost?id=" + post.getPostID() + "'>Like</a>");
				}

				//Show Edit button if its me
				if (post.getUserID()==(user.getUserID())) {

					out.println("<a href='editPost.jsp?id=" + post.getPostID() + "'>Edit</a>");
				}

				out.println("<br> <br>");
			}
		}
	%>

</body>
</html>
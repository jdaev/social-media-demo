package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import db.PostsDBUtil;
import db.UserDBUtil;
import model.Post;
import model.User;

@WebServlet("/CreatePost")
public class CreatePost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreatePost() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Resource(name = "jdbc/socialdemo")
	private DataSource datasource;
	private PostsDBUtil postsdb;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			
			postsdb = new PostsDBUtil(datasource);
		
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException(e);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		User user = (User) session.getAttribute("user");

		String postTitle = request.getParameter("postTitle");
		String postContent = request.getParameter("postContent");

		int userID = user.getUserID();
		String userName = user.getUserName();

		Post tempPost = new Post(postTitle, postContent, userName, userID);

		boolean created = tempPost.createPost(postsdb);

		if (created) {

			ArrayList<Post> myPostsList = new ArrayList<Post>();
			try {
				myPostsList = postsdb.getAllPostsByUser(userID);
				session.setAttribute("allPosts", myPostsList);
				response.sendRedirect("posts.jsp");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} else {
			RequestDispatcher dispatch = request.getRequestDispatcher("profile.jsp");
			request.setAttribute("rerror", true);
			dispatch.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
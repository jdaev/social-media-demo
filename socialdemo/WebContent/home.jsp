<%@page import="java.util.ArrayList"%>
<%@ page import="model.*"%>
<%@ include file="/navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="tag"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Account</title>
<style>
<%@
include file="/css/post.css"%>
</style>
</head>
<body>
	<div class="container-fluid main-wrapper">
		<div class="row">
			<div class="col-md-12 post-main">
				<div class="card post-card">
					<%
						User user = (User) session.getAttribute("user");
					%>
					<tag:forEach var="post" items="${allPosts}">
						<div class="card post-card single-post">
							<div class="card-header">
								<div class="d-flex justify-content-between align-items-center">
									<div class="d-flex justify-content-between align-items-center">

										<div class="ml-2">
											<div class="h5 m-0">${post.getUserName()}</div>
										</div>
									</div>
									<div>
										<div class="dropdown">

											<button class="btn btn-link dropdown-toggle" type="button"
												id="post-drop1" data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="fa fa-ellipsis-h"></i>
											</button>
											
											<div class="dropdown-menu dropdown-menu-right"
												aria-labelledby="post-drop1">
												
												<div class="h6 dropdown-header">Options</div>
												<tag:if test="${post.getUserID()==user.getUserID()}">
												<a class="dropdown-item" href="#">Edit</a>
												<a class="dropdown-item" href="#">Delete</a>
											</tag:if>
												<a class="dropdown-item" href="#">Save</a>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="card-body">

								<a class="card-link" href="#">
									<h5 class="card-title">${post.getPostTitle() }</h5>
								</a>

								<p class="card-text">${post.getPostContent() }</p>
							
							</div>

							<div class="card-footer">
								${post.getLikes() }
								<a href="#" class="card-link"><i class="fa fa-gittip"></i> 
									Like</a>
							</div>
						</div>

					</tag:forEach>

				</div>
			</div>
		</div>
		</div>
</body>
</html>
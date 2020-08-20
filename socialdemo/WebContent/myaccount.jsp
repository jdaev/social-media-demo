<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Account</title>
  <style><%@include file="/post.css"%></style>
</head>
<body>
<%@ include file="/navbar.jsp" %>
<div class="container-fluid main-wrapper">
<div class="row">
<div class="col-md-9 post-main">
<div class="card post-card single-post">
                    <div class="card-header">
                        <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
                            <li class="nav-item ">
                                <a class="nav-link active post-box" id="posts-tab" data-toggle="tab" href="#posts" role="tab" aria-controls="posts" aria-selected="true">Create a Post</a>
                            </li>

                        </ul>
                    </div>
                    <div class="card-body">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="posts" role="tabpanel" aria-labelledby="posts-tab">
                                <div class="form-group">
                                    <label class="sr-only" for="message">post</label>
                                    <textarea class="form-control" id="message" rows="3" placeholder="What are you thinking?"></textarea>
                                </div>

                            </div>

                        </div>
                        <div class="btn-toolbar justify-content-between">
                            <div class="btn-group">
                                <button type="submit" class="btn btn-primary">Share</button>
                            </div>

                        </div>
                    </div>
                    </div>
           <!--- post start-->
<div class="card post-card">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">@Manjot</div>
                                    <div class="h7 text-muted">Ontario</div>
                                </div>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="post-drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="post-drop1">
                                        <div class="h6 dropdown-header">Options</div>
                                        <a class="dropdown-item" href="#">Save</a>
                                        <a class="dropdown-item" href="#">Edit</a>
                                        <a class="dropdown-item" href="#">Delete</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        
                        <a class="card-link" href="#">
                            <h5 class="card-title">Post Title</h5>
                        </a>

                        <p class="card-text">
                            POST BODY WE CAN WRITE POST TEXT HERE
                        </p>
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i>10 min ago</div>
                    </div>
                    
                    <div class="card-footer">
                        <a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
                    </div>
                </div>
                                                    
               
                
                <!-- Post end-->
                <!--- post start-->
<div class="card post-card single-post">
                    <div class="card-header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="mr-2">
                                    <img class="rounded-circle" width="45" src="https://picsum.photos/50/50" alt="">
                                </div>
                                <div class="ml-2">
                                    <div class="h5 m-0">@Manjot</div>
                                    <div class="h7 text-muted">Ontario</div>
                                </div>
                            </div>
                            <div>
                                <div class="dropdown">
                                    <button class="btn btn-link dropdown-toggle" type="button" id="post-drop1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa fa-ellipsis-h"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="post-drop1">
                                        <div class="h6 dropdown-header">Options</div>
                                        <a class="dropdown-item" href="#">Save</a>
                                        <a class="dropdown-item" href="#">Edit</a>
                                        <a class="dropdown-item" href="#">Delete</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        
                        <a class="card-link" href="#">
                            <h5 class="card-title">Post Title 2</h5>
                        </a>

                        <p class="card-text">
                            POST BODY 2 WE CAN WRITE POST TEXT HERE
                        </p>
                        <div class="text-muted h7 mb-2"> <i class="fa fa-clock-o"></i>30 min ago</div>
                    </div>
                    
                    <div class="card-footer">
                        <a href="#" class="card-link"><i class="fa fa-gittip"></i> Like</a>
                    </div>
                </div>
                <!-- Post end-->
                
</div>
<div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <div class="h5">@Manjot</div>
                        <div class="h7 text-muted">Manjot Minhas</div>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="h6 text-muted">Followers</div>
                            <div class="h5">2K</div>
                        </li>
                        <li class="list-group-item">
                            <div class="h6 text-muted">Following</div>
                            <div class="h5">620</div>
                        </li>
                        <li class="list-group-item">
                        <div class="h6 text-muted">Location</div>
                            <div class="h5">Ontario</div>
                            </li>
                    </ul>
                </div>
            </div>
</div>
</div>
</body>
</html>
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
<div class="col-md-12 post-main">
<div class="card post-card">
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
                                    <div class="h7 text-muted">Montreal</div>
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
                                    <div class="h5 m-0">@Mandeep</div>
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
                
</div>
</div>
</div>
</body>
</html>
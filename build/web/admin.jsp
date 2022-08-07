<%-- 
    Document   : admin
    Created on : Aug 6, 2022, 5:18:27 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.png" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" />
    <link rel="stylesheet" href="assets/css/superadmin.css" />
    <style>
        .card {
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
            height: fit-content;
            background-color: white;
            width: fit-content;
            padding: 20px;
            margin-right: 20px;
        }
    </style>
    <title>Admin</title>
</head>

<body>
    
    <%
    if(session.getAttribute("username")==null){
        response.sendRedirect("login.html");
    }
    String un=(String)session.getAttribute("username");
    %>
    
    <div id="viewport">
        <!-- Sidebar -->
        <div id="sidebar">
            <header>
                <a href="admin.jsp">
                    <img src="assets/images/sqlogo.png" class="logo" alt="" />
                </a>
            </header>
            <ul class="nav">
                <li>
                    <a href="admin.jsp"> <i class="zmdi zmdi-view-dashboard"></i> Dashboard </a>
                </li>
                <li>
                    <a href="project.html"> <i class="zmdi zmdi-link"></i> Projects </a>
                </li>
                
                <li>
                    <a href="survey.jsp"> <i class="zmdi zmdi-calendar"></i> Survey </a>
                </li>
                <li>
                    <a href="#"> <i class="zmdi zmdi-info-outline"></i> Progress </a>
                </li>
                <li>
                    <a href="blog.html"> <i class="zmdi zmdi-comment-more"></i> Blog Post </a>
                </li>
                <li>
                    <a href="Viewtraining.html"> <i class="zmdi zmdi-settings"></i> Training </a>
                </li>
                <li>
                    <a href="#"><i class="zmdi zmdi-odnoklassniki"></i> Employee Recognition
                    </a>
                </li>
            </ul>
        </div>

        <!-- Columns -->
        <h4 style="margin-top: 0px; padding-top: 40px; padding-left: 40px">
            Welcome <%=un %>
        </h4>

        <div class="container">

            <div class="row">
                <h3>Progress</h3>
                <div class="col-xs-12 col-sm-6">
                    <div class="box3">
                        <div class="card">
                            <h3 class="card-header">Project - 1</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-4</h4>
                                <p class="card-text">Deadline:- 06-08-2022 <br> Progress:-</p>
                                <div class="progress">
                                    <div class="bar" style="width:35%">
                                        <p class="percent">35%</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="card-header">Project - 2</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-6</h4>
                                <p class="card-text">Deadline:- 06-08-2022 <br> Progress:-</p>
                                <div class="progress">
                                    <div class="bar" style="width:80%">
                                        <p class="percent">80%</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="card-header">Project - 3</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-2</h4>
                                <p class="card-text">Deadline:- 06-08-2022 <br> Progress:-</p>
                                <div class="progress">
                                    <div class="bar" style="width:27%">
                                        <p class="percent">27%</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="card-header">Project - 1</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-1</h4>
                                <p class="card-text">Deadline:- 06-08-2022 <br> Progress:-</p>
                                <div class="progress">
                                    <div class="bar" style="width:63%">
                                        <p class="percent">63%</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        <h3>Employee Performance Management</h3>
                        <p>Rewards/Rating</p>
                        <div class="box3">
                            <table id="example" class="table table-striped table-bordered" cellspacing="0"
                                width="fit-content">
                                <thead>
                                    <tr>
                                        <th>Emp Id</th>
                                        <th>Name</th>
                                        <th width="380px">Email</th>
                                        <th width="180px">Rating</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Thomas Hardy</td>
                                        <td>thomashardy@gmail.com</td>
                                        <td><select class="form-select form-control"
                                                aria-label="Default select example">
                                                <option selected>Rating</option>
                                                <option value="1">⭐</option>
                                                <option value="2">⭐⭐</option>
                                                <option value="3">⭐⭐⭐</option>
                                                <option value="4">⭐⭐⭐⭐</option>
                                                <option value="5">⭐⭐⭐⭐⭐</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Dominique Perrier</td>
                                        <td>dominique1122@gmail.com</td>
                                        <td><select class="form-select form-control"
                                                aria-label="Default select example">
                                                <option selected>Rating</option>
                                                <option value="1">⭐</option>
                                                <option value="2">⭐⭐</option>
                                                <option value="3">⭐⭐⭐</option>
                                                <option value="4">⭐⭐⭐⭐</option>
                                                <option value="5">⭐⭐⭐⭐⭐</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Maria Anders</td>
                                        <td>andresmaria44@gmail.com</td>
                                        <td><select class="form-select form-control"
                                                aria-label="Default select example">
                                                <option selected>Rating</option>
                                                <option value="1">⭐</option>
                                                <option value="2">⭐⭐</option>
                                                <option value="3">⭐⭐⭐</option>
                                                <option value="4">⭐⭐⭐⭐</option>
                                                <option value="5">⭐⭐⭐⭐⭐</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Fran Wilson</td>
                                        <td>framwilson@gmail.com</td>
                                        <td><select class="form-select form-control"
                                                aria-label="Default select example">
                                                <option selected>Rating</option>
                                                <option value="1">⭐</option>
                                                <option value="2">⭐⭐</option>
                                                <option value="3">⭐⭐⭐</option>
                                                <option value="4">⭐⭐⭐⭐</option>
                                                <option value="5">⭐⭐⭐⭐⭐</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Martin Blank</td>
                                        <td>blamnk44martin@gmail.com</td>
                                        <td><select class="form-select form-control"
                                                aria-label="Default select example">
                                                <option selected>Rating</option>
                                                <option value="1">⭐</option>
                                                <option value="2">⭐⭐</option>
                                                <option value="3">⭐⭐⭐</option>
                                                <option value="4">⭐⭐⭐⭐</option>
                                                <option value="5">⭐⭐⭐⭐⭐</option>
                                            </select></td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Joe Millians</td>
                                        <td>happyjoe7788@gmail.com</td>
                                        <td><select class="form-select form-control"
                                                aria-label="Default select example">
                                                <option selected>Rating</option>
                                                <option value="1">⭐</option>
                                                <option value="2">⭐⭐</option>
                                                <option value="3">⭐⭐⭐</option>
                                                <option value="4">⭐⭐⭐⭐</option>
                                                <option value="5">⭐⭐⭐⭐⭐</option>
                                            </select>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>



        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
        <script src="assets/javascript/index.js"></script>


</body>

</html>

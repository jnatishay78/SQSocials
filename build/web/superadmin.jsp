<%-- 
    Document   : superadmin
    Created on : Aug 6, 2022, 4:49:58 AM
    Author     : ASUS
--%>

<%@page import="UsersDAO.usersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" type="image/x-icon" href="assets/images/favicon.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" />
  <link rel="stylesheet" href="assets/css/superadmin.css" />
  <title>Super Admin</title>
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
        <a href="superadmin.jsp">
          <img src="assets/images/sqlogo.png" class="logo" alt="" />
        </a>
      </header>
      <ul class="nav">
        <li>
          <a href="superadmin.jsp"> <i class="zmdi zmdi-view-dashboard"></i> Dashboard </a>
        </li>
        
        <li>
          <a href="#"> <i class="zmdi zmdi-widgets"></i> Task </a>
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
          <a href="#"> <i class="zmdi zmdi-settings"></i> Training </a>
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
          <div class="box">
            <canvas id="barChart"></canvas>
          </div>
        </div>

        <div class="col-xs-12 col-sm-6">
          <div class="box">
            <canvas id="doughnutChart" height="40vw" width="80vw"></canvas>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-6">
          <h3>Training</h3>
          <div class="box1">
              
            <div class="container2">
                
              <div class="task-section form-inline" >
                <input class="form-control" type="text" name="TT" id="task-title" placeholder="Training Title" />
                <select class="form-select form-control" name="AT" aria-label="Default select example">
                    <option selected>--Assign to--</option>
                    <%
                        usersDAO ud=new usersDAO();
                        ud.assigned("Employee");
                        int i=1;
                        for(String ss : ud.result){
                            out.println("<option value="+ss+">"+ss+"</option>");
                            i++;
                        }

                    %>
                </select>
                <input class="form-control" type="date" name="D" id="task-due" />
                <textarea class="form-control" rows="1" name="TD" placeholder="Your task description"
                          id="task-description">
                </textarea>
                
                <button class="btn" id="add" >Add Task</button>
                
              </div>
                
              <div class="wrapper">
                <div id="pending">
                  <h5>Pending Tasks</h5>
                </div>
                <div id="inprogress">
                  <h5>Tasks in Progress</h5>
                </div>
                <div id="completed">
                  <h5>Completed Tasks</h5>
                </div>
              </div>
              
            </div>
                
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <h3>Employee of the Week</h3>
        <div class="col-xs-12 col-sm-9">
          <div class="" style="justify-content:space-evenly ">
            <div class="card" style="width: 24rem;">
              <img class="card-img-top" width="200px" height="200px"
                src="https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2019/08/28/15669571866848.jpg"
                alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">Thomas Hardy</h5>
                <p class="card-text">✨✨✨✨✨</p>

              </div>
            </div>
            <div class="card" style="width: 24rem;">
              <img class="card-img-top" width="200px" height="200px"
                src="https://i.insider.com/608980373f0560001881c884?width=1136&format=jpeg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">Maria Anders</h5>
                <p class="card-text">✨✨✨✨✨</p>
              </div>
            </div>

            <div class="card" style="width: 24rem;">
              <img class="card-img-top" width="200px" height="200px"
                src="https://thumbs.dreamstime.com/b/concept-career-prospective-female-employee-photo-blank-space-closeup-face-woman-employee-office-123181722.jpg"
                alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">Anna Shrew</h5>
                <p class="card-text">✨✨✨✨✨</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
  <script src="assets/javascript/index.js"></script>
  <script>
    var ctxB = document.getElementById("barChart").getContext('2d');
    var myBarChart = new Chart(ctxB, {
      type: 'bar',
      data: {
        labels: ["Project-1", "Project-2", "Project-3", "Project-4", "Project-5", "Project-6"],
        datasets: [{
          label: '# Completion Percent',
          data: [20, 35, 75, 40, 60, 66],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)'
          ],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    });
  </script>
  <script>
    var ctxD = document.getElementById("doughnutChart").getContext('2d');
    var myLineChart = new Chart(ctxD, {
      type: 'doughnut',
      data: {
        labels: ["Jan", "Mar", "May", "July", "Sept", "Nov"],
        datasets: [{
          data: [300, 50, 100, 40, 65, 55],
          backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360", "pink"],
          hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774", "yellow"]
        }]
      },

      options: {
        title: {
          display: true,
          text: 'Monthly Status'
        },
        responsive: true
      }
    });
  </script>

</body>

</html>

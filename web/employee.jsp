<%-- 
    Document   : employee
    Created on : Aug 6, 2022, 5:19:30 AM
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
    <title>Employee</title>
    <style>
        img {
            border-radius: 100%;
            height: 100px;
            width: 100px;
        }

        .card {

            height: fit-content;

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
                <a href="employee.jsp">
                    <img src="assets/images/sqlogo.png" class="logo" alt="" />
                </a>
            </header>
            <ul class="nav">
                <li>
                    <a href="employee.jsp"> <i class="zmdi zmdi-view-dashboard"></i> Dashboard </a>
                </li>
                <li>
                    <a href="Viewproject.html"> <i class="zmdi zmdi-link"></i> Projects </a>
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
                    <a href="#"><i class="zmdi zmdi-odnoklassniki"></i> Connect With Employees
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
                <h3>Recently Assigned</h3>

                <div class="col-xs-12 col-sm-9">
                    <div class="box4" style="justify-content: space-evenly;">
                        <a href="#">
                            <div style="float:left;">
                                <i class="zmdi zmdi-assignment-check zmdi-hc-5x "></i>
                                <h5>Training</h5>
                            </div>
                        </a>
                        <a href="#">
                            <div style="float:left;">
                                <i class="zmdi zmdi-file-text zmdi-hc-5x"></i>
                                <h5>Projects</h5>
                            </div>
                        </a>
                        <a href="#">
                            <div style="float:left;">
                                <i class="zmdi zmdi-card-giftcard zmdi-hc-5x"></i>
                                <h5>Feedback/Reward</h5>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

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
                    <h3>Connect with Employees</h3>
                    <div class="box5" style="justify-content:space-between ;">
                        <div class="card">
                            <div style="float: left; padding: 10px;">
                                <img src="https://media.istockphoto.com/photos/headshot-portrait-of-smiling-ethnic-businessman-in-office-picture-id1300512215?k=20&m=1300512215&s=612x612&w=0&h=enNAE_K3bhFRebyOAPFdJtX9ru7Fo4S9BZUZZQD3v20="
                                    alt="">
                            </div>
                            <div style="float: left;padding: 10px;">
                                <h4>Shawn Mendes</h4>
                                <p>Marketing Head</p>
                            </div>
                            <div style="float: left;padding-top: 20px;"><button class="btn"
                                    style="background-color: black;"><i class="zmdi zmdi-account-add zmdi-hc-1x"
                                        style="color:white;"></i></button>
                            </div>
                        </div>

                        <div class="card">
                            <div style="float: left; padding: 10px;">
                                <img src="https://i.pinimg.com/564x/ce/d8/4a/ced84a67302c60bd1abaaf9314064433.jpg"
                                    alt="">
                            </div>
                            <div style="float: left;padding: 10px;">
                                <h4>Ross Hamley</h4>
                                <p>Lead Developer</p>
                            </div>
                            <div style="float: left;padding-top: 20px;"><button class="btn"
                                    style="background-color: black;"><i class="zmdi zmdi-account-add zmdi-hc-1x"
                                        style="color:white;"></i></button>
                            </div>
                        </div>
                        <div class="card">
                            <div style="float: left; padding: 10px;">
                                <img src="https://i.pinimg.com/736x/72/3a/af/723aaf860c79a2599f8c171edde215ec.jpg"
                                    alt="">
                            </div>
                            <div style="float: left;padding: 10px;">
                                <h4>Hardin Kain</h4>
                                <p>Web Developer</p>
                            </div>
                            <div style="float: left;padding-top: 20px;"><button class="btn"
                                    style="background-color: black;"><i class="zmdi zmdi-account-add zmdi-hc-1x"
                                        style="color:white;"></i></button>
                            </div>
                        </div>
                    </div>


                    <div class="box5" style="justify-content:space-between ;">
                        <div class="card">
                            <div style="float: left; padding: 10px;">
                                <img src="https://media.istockphoto.com/photos/young-woman-ready-for-job-business-concept-picture-id1318482009?k=20&m=1318482009&s=612x612&w=0&h=gKTlFuaTRj4GEAaTQWYqXkFRNYJ92BzXfx4ZLAKhFeE="
                                    alt="">
                            </div>
                            <div style="float: left;padding: 10px;">
                                <h4>Samantha Roy</h4>
                                <p>Team Lead</p>
                            </div>
                            <div style="float: left;padding-top: 20px;"><button class="btn"
                                    style="background-color: black;"><i class="zmdi zmdi-account-add zmdi-hc-1x"
                                        style="color:white;"></i></button>
                            </div>
                        </div>

                        <div class="card">
                            <div style="float: left; padding: 10px;">
                                <img src="https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg"
                                    alt="">
                            </div>
                            <div style="float: left;padding: 10px;">
                                <h4>Harris Patrick</h4>
                                <p>Web Developer</p>
                            </div>
                            <div style="float: left;padding-top: 20px;"><button class="btn"
                                    style="background-color: black;"><i class="zmdi zmdi-account-add zmdi-hc-1x"
                                        style="color:white;"></i></button>
                            </div>
                        </div>
                        <div class="card">
                            <div style="float: left; padding: 10px;">
                                <img src="https://monteluke.com.au/wp-content/gallery/linkedin-profile-pictures/cache/3.JPG-nggid03125-ngg0dyn-591x591-00f0w010c010r110f110r010t010.JPG"
                                    alt="">
                            </div>
                            <div style="float: left;padding: 10px;">
                                <h4>Natalie Jorman</h4>
                                <p>UI Designer</p>
                            </div>
                            <div style="float: left;padding-top: 20px;"><button class="btn"
                                    style="background-color: black;"><i class="zmdi zmdi-account-add zmdi-hc-1x"
                                        style="color:white;"></i></button>
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
                    hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774",
                        "yellow"
                    ]
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

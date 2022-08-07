<%-- 
    Document   : customer
    Created on : Aug 6, 2022, 5:20:10 AM
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
    <title>Customer</title>
    <style>
        .card {
            box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
            height: fit-content;
            background-color: white;
            width: fit-content;
            padding: 20px;
            margin-right: 20px;
        }

        #form-container {
            max-width: 1000px;
            margin: auto;
            padding: 32px 5%;
            background-color: rgba(0, 0, 0, 0.8);
            border: 2px solid #000;
            border-radius: 8px;
        }

        @media (max-width: 800px) {
            #form-container {
                margin: 0 auto;
            }
        }


        .row1 {
            width: 100%;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            grid-gap: 20px 30px;
            margin-bottom: 20px;
        }


        #submit {
            display: flex;
            text-align: center;
            background-color: rgba(252, 252, 252, 0.878);
            padding: 12px 16px;
            margin: auto;
            display: grid;
        }

        #submit:hover {
            background-color: rgb(36, 232, 22);
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
                <a href="customer.jsp">
                    <img src="assets/images/sqlogo.png" class="logo" alt="" />
                </a>
            </header>
            <ul class="nav">
                <li>
                    <a href="customer.jsp"> <i class="zmdi zmdi-view-dashboard"></i> Dashboard </a>
                </li>
                <li>
                    <a href="Viewproject.html"> <i class="zmdi zmdi-link"></i> Projects </a>
                </li>
                
                <li>
                    <a href="#"> <i class="zmdi zmdi-calendar"></i> Client Requests </a>
                </li>
                <li>
                    <a href="#"> <i class="zmdi zmdi-info-outline"></i> Progress </a>
                </li>
                
                <li>
                    <a href="#"> <i class="zmdi zmdi-settings"></i> Archived Projects </a>
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
                <h3> Archived Projects</h3>
                <div class="col-xs-12 col-sm-6">
                    <div class="box3">
                        <div class="card">
                            <h3 class="card-header">Project - 1</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-4</h4>
                                <p class="card-text">Deadline:- 06-08-2022 </p>
                                <p>Status:- Completed</p>
                                <a href="./assets/images/blank.pdf" download="blank.pdf" target=”_blank”><button
                                        class="btn">View</button></a>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="card-header">Project - 2</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-6</h4>
                                <p class="card-text">Deadline:- 06-08-2022 </p>
                                <p>Status:- Completed</p>
                                <a href="./assets/images/blank.pdf" download="blank.pdf" target=”_blank”><button
                                        class="btn">View</button></a>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="card-header">Project - 3</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-2</h4>
                                <p class="card-text">Deadline:- 06-08-2022 </p>
                                <p>Status:- Completed</p>
                                <a href="./assets/images/blank.pdf" download="blank.pdf" target=”_blank”><button
                                        class="btn">View</button></a>
                            </div>
                        </div>
                        <div class="card">
                            <h3 class="card-header">Project - 1</h3>
                            <hr>
                            <div class="card-block">
                                <h4 class="card-title">Assigned to:- Manager-1</h4>
                                <p class="card-text">Deadline:- 06-08-2021</p>
                                <p>Status:- Completed</p>
                                <a href="./assets/images/blank.pdf" download="blank.pdf" target=”_blank”><button
                                        class="btn">View</button></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <h3>Client Service Request</h3>
                    <div class="box3">
                        <div class="container2">
                            <div id="form-container">
                                <form>
                                    <div class="row1">
                                        <div class="column">
                                            <label for="dropdown" class="question">Project</label>
                                            <select id="dropdown" class="input-box form-control" name="project">
                                                <option disabled value selected>Select an option</option>
                                                <option value="1">Project-1</option>
                                                <option value="2">Project-2</option>
                                                <option value="3">Project-3</option>
                                                <option value="4">Project-4</option>
                                                <option value="5">Project-5</option>
                                                <option value="6">Project-6</option>
                                            </select>
                                        </div>

                                        <div class="column">
                                            <label for="dropdown" class="question">Service</label>
                                            <select id="dropdown" class="input-box form-control" name="service">
                                                <option disabled value selected>Select an option</option>
                                                <option value="it">IT Consultancy</option>
                                                <option value="cyber">Cyber-Security</option>
                                                <option value="hardware">Hardware Innovation</option>
                                                <option value="marketing">Marketing Automation</option>
                                                <option value="customer">Customer Relationship Management</option>
                                                <option value="credit">Credit Risk Management</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="row" style="padding-left: 30px;">
                                        <textarea style="width: 847px ; height: 215px;margin-bottom: 10px;"
                                            class="input-box1 form-control textarea" name="additional-msg"
                                            placeholder="Description"></textarea>
                                    </div>

                                    <button type="submit" id="submit" class="btn">
                                        Send
                                    </button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <h3>Case Study</h3>
                <div class="col-xs-12 col-sm-9">
                    <div class="box6"
                        style="justify-content:space-evenly;background-image: url('assets/images/case.jpg');box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;; ">
                        <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
                            <div class="card-header">
                                ⭐⭐⭐⭐⭐⭐
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Key Learnings from the Carol H. Williams</h5>
                                <p class="card-text">If you’ve worked with a big brand before, consider only using the
                                    name in the title — just enough to pique interest.</p>
                                <a href="#" class="btn btn-primary">Read Full</a>
                            </div>
                            <div class="card-footer text-muted">
                                2 days ago
                            </div>
                        </div>

                    </div>
                    <div class="box6"
                        style="justify-content:space-evenly;background-image: url('assets/images/case2.jpg');box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;; ">
                        <div class="card text-center" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
                            <div class="card-header">
                                ⭐⭐⭐⭐⭐⭐
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">"In-Depth Performance Marketing Case Study," by Switch</h5>
                                <p class="card-text">The case study reads like a compelling research article, including
                                    titles like "In-Depth Performance Marketing Case Study," “Scenario,” and "Approach,”
                                    so that readers get a high-level overview of what the client needed and why they
                                    approached Switch. </p>
                                <a href="#" class="btn btn-primary">Read Full</a>
                            </div>
                            <div class="card-footer text-muted">
                                10 days ago
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

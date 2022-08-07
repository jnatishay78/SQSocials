package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import UsersDAO.usersDAO;

public final class superadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\" />\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("  <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/images/favicon.png\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css\" />\n");
      out.write("  <link rel=\"stylesheet\"\n");
      out.write("    href=\"https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/css/superadmin.css\" />\n");
      out.write("  <title>Super Admin</title>\n");
      out.write("  <style>\n");
      out.write("    .card {\n");
      out.write("      box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;\n");
      out.write("      height: fit-content;\n");
      out.write("      background-color: white;\n");
      out.write("      width: fit-content;\n");
      out.write("      padding: 20px;\n");
      out.write("      margin-right: 20px;\n");
      out.write("    }\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    ");

    //if(session.getAttribute("username")==null){
        //response.sendRedirect("login.html");
    //}
    String un=(String)session.getAttribute("username");
    
      out.write("\n");
      out.write("    \n");
      out.write("  <div id=\"viewport\">\n");
      out.write("    <!-- Sidebar -->\n");
      out.write("    <div id=\"sidebar\">\n");
      out.write("      <header>\n");
      out.write("        <a href=\"superadmin.jsp\">\n");
      out.write("          <img src=\"assets/images/sqlogo.png\" class=\"logo\" alt=\"\" />\n");
      out.write("        </a>\n");
      out.write("      </header>\n");
      out.write("      <ul class=\"nav\">\n");
      out.write("        <li>\n");
      out.write("          <a href=\"superadmin.jsp\"> <i class=\"zmdi zmdi-view-dashboard\"></i> Dashboard </a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\"> <i class=\"zmdi zmdi-widgets\"></i> Task </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"survey.html\"> <i class=\"zmdi zmdi-calendar\"></i> Survey </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\"> <i class=\"zmdi zmdi-info-outline\"></i> Progress </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"blog.html\"> <i class=\"zmdi zmdi-comment-more\"></i> Blog Post </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\"> <i class=\"zmdi zmdi-settings\"></i> Training </a>\n");
      out.write("        </li>\n");
      out.write("        <li>\n");
      out.write("          <a href=\"#\"><i class=\"zmdi zmdi-odnoklassniki\"></i> Employee Recognition\n");
      out.write("          </a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Columns -->\n");
      out.write("    <h4 style=\"margin-top: 0px; padding-top: 40px; padding-left: 40px\">\n");
      out.write("      Welcome ");
      out.print(un );
      out.write("\n");
      out.write("    </h4>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <h3>Progress</h3>\n");
      out.write("        <div class=\"col-xs-12 col-sm-6\">\n");
      out.write("          <div class=\"box\">\n");
      out.write("            <canvas id=\"barChart\"></canvas>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-xs-12 col-sm-6\">\n");
      out.write("          <div class=\"box\">\n");
      out.write("            <canvas id=\"doughnutChart\" height=\"40vw\" width=\"80vw\"></canvas>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-xs-12 col-sm-6\">\n");
      out.write("          <h3>Training</h3>\n");
      out.write("          <div class=\"box1\">\n");
      out.write("              \n");
      out.write("            <div class=\"container2\">\n");
      out.write("                \n");
      out.write("              <div class=\"task-section form-inline\" >\n");
      out.write("                <input class=\"form-control\" type=\"text\" name=\"TT\" id=\"task-title\" placeholder=\"Training Title\" />\n");
      out.write("                <select class=\"form-select form-control\" name=\"AT\" aria-label=\"Default select example\">\n");
      out.write("                    <option selected>--Assign to--</option>\n");
      out.write("                    ");

                        usersDAO ud=new usersDAO();
                        ud.assigned("Employee");
                        int i=1;
                        for(String ss : ud.result){
                            out.println("<option value="+ss+">"+ss+"</option>");
                            i++;
                        }

                    
      out.write("\n");
      out.write("                </select>\n");
      out.write("                <input class=\"form-control\" type=\"date\" name=\"D\" id=\"task-due\" />\n");
      out.write("                <textarea class=\"form-control\" rows=\"1\" name=\"TD\" placeholder=\"Your task description\"\n");
      out.write("                          id=\"task-description\">\n");
      out.write("                </textarea>\n");
      out.write("                \n");
      out.write("                <button class=\"btn\" id=\"add\" >Add Task</button>\n");
      out.write("                \n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("              <div class=\"wrapper\">\n");
      out.write("                <div id=\"pending\">\n");
      out.write("                  <h5>Pending Tasks</h5>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"inprogress\">\n");
      out.write("                  <h5>Tasks in Progress</h5>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"completed\">\n");
      out.write("                  <h5>Completed Tasks</h5>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <h3>Employee of the Week</h3>\n");
      out.write("        <div class=\"col-xs-12 col-sm-9\">\n");
      out.write("          <div class=\"\" style=\"justify-content:space-evenly \">\n");
      out.write("            <div class=\"card\" style=\"width: 24rem;\">\n");
      out.write("              <img class=\"card-img-top\" width=\"200px\" height=\"200px\"\n");
      out.write("                src=\"https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2019/08/28/15669571866848.jpg\"\n");
      out.write("                alt=\"Card image cap\">\n");
      out.write("              <div class=\"card-body\">\n");
      out.write("                <h5 class=\"card-title\">Thomas Hardy</h5>\n");
      out.write("                <p class=\"card-text\">✨✨✨✨✨</p>\n");
      out.write("\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card\" style=\"width: 24rem;\">\n");
      out.write("              <img class=\"card-img-top\" width=\"200px\" height=\"200px\"\n");
      out.write("                src=\"https://i.insider.com/608980373f0560001881c884?width=1136&format=jpeg\" alt=\"Card image cap\">\n");
      out.write("              <div class=\"card-body\">\n");
      out.write("                <h5 class=\"card-title\">Maria Anders</h5>\n");
      out.write("                <p class=\"card-text\">✨✨✨✨✨</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"card\" style=\"width: 24rem;\">\n");
      out.write("              <img class=\"card-img-top\" width=\"200px\" height=\"200px\"\n");
      out.write("                src=\"https://thumbs.dreamstime.com/b/concept-career-prospective-female-employee-photo-blank-space-closeup-face-woman-employee-office-123181722.jpg\"\n");
      out.write("                alt=\"Card image cap\">\n");
      out.write("              <div class=\"card-body\">\n");
      out.write("                <h5 class=\"card-title\">Anna Shrew</h5>\n");
      out.write("                <p class=\"card-text\">✨✨✨✨✨</p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js\"></script>\n");
      out.write("  <script src=\"assets/javascript/index.js\"></script>\n");
      out.write("  <script>\n");
      out.write("    var ctxB = document.getElementById(\"barChart\").getContext('2d');\n");
      out.write("    var myBarChart = new Chart(ctxB, {\n");
      out.write("      type: 'bar',\n");
      out.write("      data: {\n");
      out.write("        labels: [\"Project-1\", \"Project-2\", \"Project-3\", \"Project-4\", \"Project-5\", \"Project-6\"],\n");
      out.write("        datasets: [{\n");
      out.write("          label: '# Completion Percent',\n");
      out.write("          data: [20, 35, 75, 40, 60, 66],\n");
      out.write("          backgroundColor: [\n");
      out.write("            'rgba(255, 99, 132, 0.2)',\n");
      out.write("            'rgba(54, 162, 235, 0.2)',\n");
      out.write("            'rgba(255, 206, 86, 0.2)',\n");
      out.write("            'rgba(75, 192, 192, 0.2)',\n");
      out.write("            'rgba(153, 102, 255, 0.2)',\n");
      out.write("            'rgba(255, 159, 64, 0.2)'\n");
      out.write("          ],\n");
      out.write("          borderColor: [\n");
      out.write("            'rgba(255,99,132,1)',\n");
      out.write("            'rgba(54, 162, 235, 1)',\n");
      out.write("            'rgba(255, 206, 86, 1)',\n");
      out.write("            'rgba(75, 192, 192, 1)',\n");
      out.write("            'rgba(153, 102, 255, 1)',\n");
      out.write("            'rgba(255, 159, 64, 1)'\n");
      out.write("          ],\n");
      out.write("          borderWidth: 1\n");
      out.write("        }]\n");
      out.write("      },\n");
      out.write("      options: {\n");
      out.write("        scales: {\n");
      out.write("          yAxes: [{\n");
      out.write("            ticks: {\n");
      out.write("              beginAtZero: true\n");
      out.write("            }\n");
      out.write("          }]\n");
      out.write("        }\n");
      out.write("      }\n");
      out.write("    });\n");
      out.write("  </script>\n");
      out.write("  <script>\n");
      out.write("    var ctxD = document.getElementById(\"doughnutChart\").getContext('2d');\n");
      out.write("    var myLineChart = new Chart(ctxD, {\n");
      out.write("      type: 'doughnut',\n");
      out.write("      data: {\n");
      out.write("        labels: [\"Jan\", \"Mar\", \"May\", \"July\", \"Sept\", \"Nov\"],\n");
      out.write("        datasets: [{\n");
      out.write("          data: [300, 50, 100, 40, 65, 55],\n");
      out.write("          backgroundColor: [\"#F7464A\", \"#46BFBD\", \"#FDB45C\", \"#949FB1\", \"#4D5360\", \"pink\"],\n");
      out.write("          hoverBackgroundColor: [\"#FF5A5E\", \"#5AD3D1\", \"#FFC870\", \"#A8B3C5\", \"#616774\", \"yellow\"]\n");
      out.write("        }]\n");
      out.write("      },\n");
      out.write("\n");
      out.write("      options: {\n");
      out.write("        title: {\n");
      out.write("          display: true,\n");
      out.write("          text: 'Monthly Status'\n");
      out.write("        },\n");
      out.write("        responsive: true\n");
      out.write("      }\n");
      out.write("    });\n");
      out.write("  </script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

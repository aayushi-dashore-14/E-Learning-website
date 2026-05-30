package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"utf-8\">\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t\t <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("\n");
      out.write("\t\t<title> Online Course Management </title>\n");
      out.write("\n");
      out.write("\t\t<!-- Google font -->\n");
      out.write("\t\t<link href=\"https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\t\t<!-- Bootstrap -->\n");
      out.write("\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"css/bootstrap.min.css\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- Font Awesome Icon -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("\t\t<!-- Custom stlylesheet -->\n");
      out.write("\t\t<link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\n");
      out.write("\t\t<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("\t\t<!--[if lt IE 9]>\n");
      out.write("\t\t  <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("\t\t  <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("           \n");
      out.write("              \n");
      out.write("    </head>\n");
      out.write("\t<body>\n");
      out.write("\n");
      out.write("\t\t<!-- Header -->\n");
      out.write("\t\t<header id=\"header\" class=\"transparent-nav\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("\t\t\t\t<div class=\"navbar-header\">\n");
      out.write("\t\t\t\t\t<!-- Logo -->\n");
      out.write("\t\t\t\t\t<div class=\"navbar-brand\">\n");
      out.write("\t\t\t\t\t\t<a class=\"logo\" href=\"index.jsp\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"./img/logo-alt.png\" alt=\"logo\">\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<!-- /Logo -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t<!-- Mobile toggle -->\n");
      out.write("\t\t\t\t\t<button class=\"navbar-toggle\">\n");
      out.write("\t\t\t\t\t\t<span></span>\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t<!-- /Mobile toggle -->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<!-- Navigation -->\n");
      out.write("\t\t\t\t<nav id=\"nav\">\n");
      out.write("\t\t\t\t\t<ul class=\"main-menu nav navbar-nav navbar-right\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t<li> <a href=\"course_demo.jsp\">Courses</a> </li>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\t<li><a href=\"about.jsp\">About</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("                                                <li class=\"admindesign\"><a href=\"admin_login.jsp\">\n");
      out.write("                                                        <img src=\"./img/admin.jpeg\" width=\"50%\" height=\"5%\" alt=\"Admin Login\">\n");
      out.write("                                                    </a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</nav>\n");
      out.write("\t\t\t\t<!-- /Navigation -->\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</header>\n");
      out.write("\t\t<!-- /Header -->\n");
      out.write("\n");
      out.write("\t\t<!-- Home -->\n");
      out.write("\t\t<div id=\"home\" class=\"hero-area\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- Backgound Image -->\n");
      out.write("\t\t\t<div class=\"bg-image bg-parallax overlay\" style=\"background-image:url(./img/home-background.jpg)\"></div>\n");
      out.write("\t\t\t<!-- /Backgound Image -->\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"home-wrapper\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-8\">\n");
      out.write("\t\t\t\t\t\t\t<h1 class=\"white-text\"> Smart Learning Platform  </h1>\n");
      out.write("\t\t\t\t\t\t\t<p class=\"lead white-text\"> \"Smart Learning for a Smart Future\" </p>\n");
      out.write("\t\t\t\t\t\t\t<a class=\"main-button icon-button\" href=\"student login.jsp\"> Login</a>\n");
      out.write("                                                        <a class=\"main-button icon-button\" href=\"student registration.jsp\"> Registration</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /Home -->\n");
      out.write("\n");
      out.write("\t\t<!-- About -->\n");
      out.write("\t\t<div id=\"about\" class=\"section\">\n");
      out.write("\n");
      out.write("\t\t\t<!-- container -->\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("\t\t\t\t<!-- row -->\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"section-header\">\n");
      out.write("\t\t\t\t\t\t\t<h2>Welcome to Edusite</h2>\n");
      out.write("\t\t\t\t\t\t\t<p class=\"lead\"></p>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- feature -->\n");
      out.write("\t\t\t\t\t\t<div class=\"feature\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"feature-icon fa fa-flask\"></i>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"feature-content\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Online Courses </h4>\n");
      out.write("\t\t\t\t\t\t\t\t<p> Best Online Course Available for all courses</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- /feature -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- feature -->\n");
      out.write("\t\t\t\t\t\t<div class=\"feature\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"feature-icon fa fa-users\"></i>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"feature-content\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Expert Teachers</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<p>we have expert mentors for all subjects.</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- /feature -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- feature -->\n");
      out.write("\t\t\t\t\t\t<div class=\"feature\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"feature-icon fa fa-comments\"></i>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"feature-content\">\n");
      out.write("\t\t\t\t\t\t\t\t<h4>Community</h4>\n");
      out.write("\t\t\t\t\t\t\t\t<p>best community available for any kind of query.</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- /feature -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"col-md-6\">\n");
      out.write("\t\t\t\t\t\t<div class=\"about-img\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"./img/about.png\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<!-- row -->\n");
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<!-- container -->\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- /About -->\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t\t<!-- preloader -->\n");
      out.write("\t\t<div id='preloader'><div class='preloader'></div></div>\n");
      out.write("\t\t<!-- /preloader -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<!-- jQuery Plugins -->\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("\t</body>\n");
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

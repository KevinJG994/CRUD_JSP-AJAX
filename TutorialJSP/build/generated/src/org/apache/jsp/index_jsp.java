package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Controlador.ControladorProductos;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Free Adidas Website Template | Home :: w3layouts</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\".dropdown img.flag\").addClass(\"flagvisibility\");\n");
      out.write("\n");
      out.write("                $(\".dropdown dt a\").click(function () {\n");
      out.write("                    $(\".dropdown dd ul\").toggle();\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                $(\".dropdown dd ul li a\").click(function () {\n");
      out.write("                    var text = $(this).html();\n");
      out.write("                    $(\".dropdown dt a span\").html(text);\n");
      out.write("                    $(\".dropdown dd ul\").hide();\n");
      out.write("                    $(\"#result\").html(\"Selected value is: \" + getSelectedValue(\"sample\"));\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                function getSelectedValue(id) {\n");
      out.write("                    return $(\"#\" + id).find(\"dt a span.value\").html();\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                $(document).bind('click', function (e) {\n");
      out.write("                    var $clicked = $(e.target);\n");
      out.write("                    if (!$clicked.parents().hasClass(\"dropdown\"))\n");
      out.write("                        $(\".dropdown dd ul\").hide();\n");
      out.write("                });\n");
      out.write("\n");
      out.write("\n");
      out.write("                $(\"#flagSwitcher\").click(function () {\n");
      out.write("                    $(\".dropdown img.flag\").toggleClass(\"flagvisibility\");\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <!-- start menu -->     \n");
      out.write("        <link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\n");
      out.write("        <script>$(document).ready(function () {\n");
      out.write("                $(\".megamenu\").megamenu();});</script>\n");
      out.write("        <!-- end menu -->\n");
      out.write("        <!-- top scrolling -->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            jQuery(document).ready(function ($) {\n");
      out.write("                $(\".scroll\").click(function (event) {\n");
      out.write("                    event.preventDefault();\n");
      out.write("                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            ControladorProductos cp = new ControladorProductos();
        
      out.write("\n");
      out.write("        ");
      out.print( cp.getViewProductos());
      out.write("\n");
      out.write("    </body>\n");
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

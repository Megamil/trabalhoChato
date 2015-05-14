package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class novoLivro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" type=\"text/css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/admin.css\" type=\"text/css\">\n");
      out.write("\t<script type=\"text/javascript\" src=\"scripts/jquery-2.1.4.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"scripts/bootstrap.min.js\"></script>\n");
      out.write("        <title>Administrativo</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <div id=\"navbar\" class=\"navbar-collapse collapse\">\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("              <li class=\"active\"><a href=\"#\">Livros</a></li>\n");
      out.write("              <li><a href=\"#\">Usuários</a></li>\n");
      out.write("              <li><a href=\"#\">Pedidos</a></li>\n");
      out.write("              <li><a href=\"#\">Vendas</a></li>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </nav>\n");
      out.write("        \n");
      out.write("        <div id=\"corpo\" align=\"center\">\n");
      out.write("            <form action=\"addLivro.jsp\" method=\"post\">\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend>Novo Livro:</legend>\n");
      out.write("                    Título:\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"titulo\">\n");
      out.write("                    Autor:\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"autor\">\n");
      out.write("                    ISBN:\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"isbn\">\n");
      out.write("                    Sinopse:\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"sinopse\">\n");
      out.write("                    Valor:\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"valor\">\n");
      out.write("                    Categoria:\n");
      out.write("                    <select class=\"form-control\" name=\"categoria\">\n");
      out.write("                        \n");
      out.write("                        <option value=\"\">Selecione</option>\n");
      out.write("                        <option value=\"1\">Romance</option>\n");
      out.write("                        <option value=\"2\">Comédia</option>\n");
      out.write("                        <option value=\"3\">Drama</option>\n");
      out.write("                        <option value=\"4\">Infantil</option>\n");
      out.write("                        <option value=\"5\">Terror</option>\n");
      out.write("                        <option value=\"6\">Ficção Científica</option>\n");
      out.write("                        <option value=\"7\">História Nacional</option>\n");
      out.write("\n");
      out.write("                    </select><br>\n");
      out.write("\n");
      out.write("                    <input class=\"btn btn-success\" type=\"submit\" value=\"Gravar\"> \n");
      out.write("                </fieldset>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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

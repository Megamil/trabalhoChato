package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.objLivro;
import dao.Dao;

public final class addLivro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Inserindo Livro</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
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
      out.write("        <div id=\"corpo\">\n");
      out.write("        ");

            objLivro obj = new objLivro();
            
            obj.setTitulo(request.getParameter("titulo"));
            obj.setAutor(request.getParameter("autor"));
            obj.setISBN(request.getParameter("isbn"));
            obj.setSinopse(request.getParameter("sinopse"));
            obj.setValor(Double.parseDouble(request.getParameter("valor")));
            obj.setCategoria(Integer.parseInt(request.getParameter("categoria")));
            
            Class.forName("com.mysql.jdbc.Driver");
            Dao dao = new Dao();
            dao.inserirLivro(obj);
            out.print("<h1>Conta Cadastrada com Sucesso</h1>");
        
      out.write("\n");
      out.write("        </div>\n");
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

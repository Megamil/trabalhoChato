<%@page import="java.util.ArrayList"%>
<%@page import="dao.ObjLogin"%>
<%@page import="dao.DaoLogin"%>

<%
        ObjLogin obj = new ObjLogin();

        obj.setUsuario(request.getParameter("usuario"));
        obj.setSenha(request.getParameter("senha"));

        Class.forName("com.mysql.jdbc.Driver");
        DaoLogin dao = new DaoLogin();
        ArrayList<ObjLogin> vet = dao.logar(obj.getUsuario(),obj.getSenha());
        if (vet.size() > 0) {
  
            response.sendRedirect("admin.jsp");

        } else {
            out.print("<h1>Acesso Negado</h1> <a type=\"button\" class=\"btn btn-success\" href=\"index.jsp\">Voltar</a>");
        }
    %>
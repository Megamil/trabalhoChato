<%@page import="java.util.ArrayList"%>
<%@page import="dao.objUsuario"%>
<%@page import="dao.DaoUsuarios"%>

<%
        objUsuario obj = new objUsuario();

        obj.setUsuario(request.getParameter("usuario"));
        obj.setSenha(request.getParameter("senha"));

        Class.forName("com.mysql.jdbc.Driver");
        DaoUsuarios dao = new DaoUsuarios();
        ArrayList<objUsuario> vet = dao.logar(obj.getUsuario(),obj.getSenha());
        if (vet.size() > 0) {
  
            response.sendRedirect("http://localhost:8080/Livraria/admin.jsp");

        } else {
            out.print("<h1>Acesso Negado</h1>");
        }
    %>

<%@page import="dao.ObjLogin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoLogin"%>
<%@page import="dao.DaoLivros"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:import url="cabecalho.jsp"/>
    <fieldset><legend>Lista de Usuários</legend>
    <table border="1px">
        
        <thead>
            <tr>
            <th>Usuario</th>
            <th>Excluir</th>
            <th>Alterar</th>
            </tr>
        </thead>
        <tbody>
            <% Class.forName("com.mysql.jdbc.Driver");
            DaoLogin dao = new DaoLogin();
            ArrayList<ObjLogin> usuario = dao.Usuarios();
                for (ObjLogin u: usuario) {
            %>
        
        <tr>
            
            <td><%= u.getUsuario() %></td>
            <td><a href="ServletDeletarUsuario?codigo=<%= u.getId() %>" type="button" class="btn btn-danger">Excluir</a></td>
            <td><a href="alterarUsuario.jsp?id=<%= u.getId()%>" type="button" class="btn btn-warning">Alterar</a></td>
            
        </tr>
        
        <% } %>
        </tbody>
    </table>
        </fieldset>
<c:import url="footer.jsp"/>
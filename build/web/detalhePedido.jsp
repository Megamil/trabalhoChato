<%@page import="dao.DaoDetalhesDoPedido"%>
<%@page import="dao.ObjDetalhesDoPedido"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:import url="cabecalho.jsp"/>
      
    <fieldset><legend>Detalhes do pedido <%= request.getParameter("id") %> </legend>
    <table border="1px">
        
        <thead>
            <tr>
            <th>Livro</th>
            <th>Quantidade</th>
            </tr>
        </thead>
        <tbody>
      
        <% Class.forName("com.mysql.jdbc.Driver");
            DaoDetalhesDoPedido dao = new DaoDetalhesDoPedido();
            ArrayList<ObjDetalhesDoPedido> pedidos = dao.Detalhespedidos(Integer.parseInt(request.getParameter("id")));
                for (ObjDetalhesDoPedido u: pedidos) {
        %>
            
        <tr>
            
            <td><%= u.getLivro()%></td>
            <td><%= u.getQuantidade() %></td>
            
        </tr>
        
        <% } %>
        </tbody>
    </table>
        <a href="relatorioPedidos.jsp" class="btn btn-success">Voltar</a>
        </fieldset>
<c:import url="footer.jsp"/>
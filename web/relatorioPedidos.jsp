
<%@page import="dao.DaoPedido"%>
<%@page import="dao.ObjPedido"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:import url="cabecalho.jsp"/>
    <fieldset><legend>Relatório de Pedidos</legend>
    <table border="1px">
        
        <thead>
            <tr>
            <th>Cliente</th>
            <th>Pedido</th>
            <th>Valor</th>
            <th>Tipo de pagamento</th>
            <th>Detalhes</th>
            </tr>
        </thead>
        <tbody>
            <% Class.forName("com.mysql.jdbc.Driver");
            DaoPedido dao = new DaoPedido();
            ArrayList<ObjPedido> pedidos = dao.pedidos();
                for (ObjPedido u: pedidos) {
            %>
        
        <tr>
            
            <td><%= u.getCliente()%></td>
            <td><%= u.getId_pedido()%></td>
            <td><%= u.getValor() %></td>
            <td><%= u.getTipopagamento() %></td>
            <td><a href="detalhePedido.jsp?id=<%= u.getId_pedido()%>" type="button" class="btn btn-warning">Detalhes</a></td>
            
        </tr>
        
        <% } %>
        </tbody>
    </table>
        </fieldset>
<c:import url="footer.jsp"/>

    <%@page import="java.util.ArrayList"%>
<%@page import="dao.ObjLivro"%>
<%@page import="dao.DaoLivros"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:import url="cabecalho.jsp"/>
<fieldset><legend>Lista de Livros</legend>
    <table border="1px">
        
        <thead>
            <tr>
            <th>Titulo</th>
            <th>Autor</th>
            <th>ISBN</th>
            <th>Sinopse</th>
            <th>Imagem</th>
            <th>Valor</th>
            <th>Categoria</th>
            <th>Excluir</th>
            <th>Alterar</th>
            </tr>
        </thead>
        <tbody>
            <% Class.forName("com.mysql.jdbc.Driver");
            DaoLivros dao = new DaoLivros();
            ArrayList<ObjLivro> livros = dao.Livros();
                for (ObjLivro l: livros) {
            %>
        
            <tr>
            
            <td><%= l.getTitulo() %></td>
            <td><%= l.getAutor()%></td>
            <td><%= l.getISBN() %></td>
            <td><%= l.getSinopse() %></td>
            <td><%= l.getCaminho_imagem()%></td>
            <td><%= l.getValor() %></td>
            
            <% switch(l.getCategoria()){
                       case 1:
                            out.println("<td>Romance</td>");
                            break;
                        case 2:
                            out.println("<td>Comédia</td>");
                            break;
                        case 3:
                            out.println("<td>Drama</td>");
                            break;
                        case 4:
                            out.println("<td>Infantil</td>");
                            break;
                        case 5:
                            out.println("<td>Terror</td>");
                            break;
                        case 6:
                            out.println("<td>Ficção Científica</td>");
                            break;
                        case 7:
                            out.println("<td>História Nacional</td>");
                            break;
                        default:
                            out.println("<td>SEM CATEGORIA</td>");
                            break;
                    }%>
            <td><a href="ServletDeletarLivro?codigo=<%= l.getId() %>" type="button" class="btn btn-danger">Excluir</a></td>

                
            <td><a href="alterarLivro.jsp?id=<%= l.getId() %>" type="button" class="btn btn-warning">Alterar</a></td> 
            </tr>
        <% } %>
        </tbody>
    </table>
</fieldset>
<c:import url="footer.jsp"/>

        <%@page import="dao.ObjLivro"%>
<%@page import="dao.DaoLivros"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:import url="cabecalho.jsp"/>
        
        <% DaoLivros dao = new DaoLivros(); 
        
        ObjLivro obj = dao.buscar(Integer.parseInt(request.getParameter("id")));
        
        %>
        
        <div align="center">
            <form action="updateLivro.jsp" method="post">
                <input class="form-control hidden" type="text" name="id" value="<%= obj.getId() %>">
                <fieldset>
                    <legend>Alterar Livro:</legend>
                    
                    <table>
                        
                        <tr>
                            <td>ID:<input class="form-control" type="text" name="id" value="<%= obj.getId() %>" disabled></td>
                            <td>Título:<input class="form-control" type="text" name="titulo" value="<%= obj.getTitulo() %>"></td>
                            <td>Autor: <input class="form-control" type="text" name="autor" value="<%= obj.getAutor()%>"></td>
                        </tr>
 
                        <tr>
                            <td>ISBN:<input class="form-control" type="text" name="isbn" value="<%= obj.getISBN()%>"></td>
                            <td>Sinopse:<input class="form-control" type="text" name="sinopse" value="<%= obj.getSinopse()%>"></td>
                            <td>Caminho da Imagem:<input class="form-control" type="text" name="caminho_imagem" value="<%= obj.getCaminho_imagem()%>"></td>
                        </tr>
                        
                        <tr>
                            <td>Valor:<input class="form-control" type="text" name="valor" value="<%= obj.getValor()%>"></td>
                            <td>Categoria:<select class="form-control" name="categoria">
                        
                                <option value="">Selecione</option>
                                <option <% if(obj.getCategoria() == 1){out.println("selected");}%> value="1">Romance</option>
                                <option <% if(obj.getCategoria() == 2){out.println("selected");}%> value="2">Comédia</option>
                                <option <% if(obj.getCategoria() == 3){out.println("selected");}%> value="3">Drama</option>
                                <option <% if(obj.getCategoria() == 4){out.println("selected");}%> value="4">Infantil</option>
                                <option <% if(obj.getCategoria() == 5){out.println("selected");}%> value="5">Terror</option>
                                <option <% if(obj.getCategoria() == 6){out.println("selected");}%> value="6">Ficção Científica</option>
                                <option <% if(obj.getCategoria() == 7){out.println("selected");}%> value="7">História Nacional</option>

                            </select>
                            </td>
                        </tr>
                        
                    </table>
                   <br>

                    <input class="btn btn-success" type="submit" value="Salvar"> 
                </fieldset>
        </form>
        </div>
    <c:import url="footer.jsp"/>
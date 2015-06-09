
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:import url="cabecalho.jsp"/>
        
        <div align="center">
            <form action="addLivro.jsp" method="post">
                <fieldset>
                    <legend>Novo Livro:</legend>
                     <table>
                        
                        <tr>
                            <td>Título:<input class="form-control" type="text" name="titulo"></td>
                            <td>Autor: <input class="form-control" type="text" name="autor"></td>
                            <td>ISBN:<input class="form-control" type="text" name="isbn"></td>
                        </tr>
 
                        <tr>
                            <td>Sinopse:<input class="form-control" type="text" name="sinopse"></td>
                            <td>Caminho da Imagem:<input class="form-control" type="text" name="caminho_imagem" value="css/images/"></td>
                            <td>Valor:<input class="form-control" type="text" name="valor"></td>
                        </tr>
                        
                        <tr>
                            <td>Categoria:<select class="form-control" name="categoria">
                        
                                <option value="">Selecione</option>
                                <option value="1">Romance</option>
                                <option value="2">Comédia</option>
                                <option value="3">Drama</option>
                                <option value="4">Infantil</option>
                                <option value="5">Terror</option>
                                <option value="6">Ficção Científica</option>
                                <option value="7">História Nacional</option>

                            </select>
                            </td>
                        </tr>
                        
                    </table><br>

                    <input class="btn btn-success" type="submit" value="Criar"> 
                </fieldset>
        </form>
        </div>
    <c:import url="footer.jsp"/>
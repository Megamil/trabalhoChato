
<%@page import="dao.DaoLivros"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:import url="head.jsp"/>
	<div class="row text-center">
		<div id="Menu" class="col-sm-12">
			<div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default active"><a href="romance.jsp">Romance</a></button>
				<button type="button" class="btn btn-default"><a href="comedia.jsp">Comédia</a></button>
				<button type="button" class="btn btn-default"><a href="drama.jsp">Drama</a></button>
				<button type="button" class="btn btn-default"><a href="infantil.jsp">Infantil</a></button>
				<button type="button" class="btn btn-default"><a href="terror.jsp">Terror</a></button>
				<button type="button" class="btn btn-default"><a href="ficcao_cientifica.jsp">Ficção Ciêntífica</a></button>
				<button type="button" class="btn btn-default"><a href="historia_nacional.jsp">História Nacional</a></button>
			</div>
		</div>
	</div>
	<div id="Livros" class="row">
		<!--Colocar o código abaixo dentro de um foreach para cada produto encontrado no banco-->
		<%
                    Class.forName("com.mysql.jdbc.Driver");
                    DaoLivros dao = new DaoLivros();
                    
                    ResultSet livros = dao.localizarLivros(1);
                    
                    while(livros.next()){
                        out.print("<form action='adicionarLivroCarrinho.jsp' method='post'>");
                            out.print("<div class='livro-item col-sm-12 margin-top10'>");
                                out.print("<div class='form-group clearfix col-sm-4'>");
                                    out.print("<div class='livro-imagem'><input type='hidden' name='id_livro' value='"+livros.getString("id_livro")+"'><input type='hidden' name='caminho_imagem' value='" + livros.getString("caminho_imagem") + "'><img src='" + livros.getString("caminho_imagem") + "'/></div>");
                                out.print("</div>");
                                out.print("<div class='col-sm-8 padding0'>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Código:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='isbn' value ='"+ livros.getString("isbn") + "'>" + livros.getString("isbn"));
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Categoria:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='categoria' value ='1'>" + "Romance");
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Título:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='titulo' value ='"+ livros.getString("titulo") + "'>" + livros.getString("titulo"));
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Autor:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='autor' value ='"+ livros.getString("autor") + "'>" + livros.getString("autor"));
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Valor:</label>R$");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='valor' value ='"+ livros.getFloat("valor") + "'>" + livros.getFloat("valor"));
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Sinopse:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='sinopse' value ='"+ livros.getString("sinopse") + "'>" + livros.getString("sinopse"));
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='btn-group padding-left3' role='group' aria-label='...'>");
                                        out.print("<input type='submit' class='btn btn-default' value='Adicionar ao carrinho'>");
                                    out.print("</div>");
                                out.print("</div>");
                            out.print("</div>");
                        out.print("</form>");
                                
                    }
		%>
		<!--Colocar o código acima dentro de um foreach para cada produto encontrado no banco-->
	</div>
</div>

</body>
<script type="text/javascript">


</script>
</html>
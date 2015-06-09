
<%@page import="dao.ObjLivro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoLivros"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:import url="head.jsp"/>
	<div class="row text-center">
		<div id="Menu" class="col-sm-12">
			<div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default"><a href="romance.jsp">Romance</a></button>
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
                    ArrayList <ObjLivro> livros = (ArrayList) session.getAttribute("carrinho");
                    for(ObjLivro obj : livros){
                        String categoria = null;
                        switch(obj.getCategoria()){
                            case 1: categoria = "Romance";
                                    break;
                            case 2: categoria = "Comédia";
                                    break;
                            case 3: categoria = "Drama";
                                    break;
                            case 4: categoria = "Infantil";
                                    break;
                            case 5: categoria = "Terror";
                                    break;
                            case 6: categoria = "Ficção Científica";
                                    break;
                            case 7: categoria = "História Nacional";
                                    break;
                        }
                        out.print("<form action='removerLivroCarrinho.jsp' method='post'>");
                            out.print("<div class='livro-item col-sm-12 margin-top10'>");
                                out.print("<div class='form-group clearfix col-sm-4'>");
                                    out.print("<div class='livro-imagem'><input type='hidden' name='id_livro' value='"+obj.getId()+"'><input type='hidden' name='caminho_imagem' value='"+obj.getCaminho_imagem()+"'><img src='" + obj.getCaminho_imagem() + "'/></div>");
                                out.print("</div>");
                                out.print("<div class='col-sm-8 padding0'>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Código:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='isbn' value ='"+ obj.getISBN() + "'>" + obj.getISBN());
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Categoria:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print(categoria);
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Título:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='titulo' value ='"+ obj.getTitulo() + "'>" + obj.getTitulo());
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Autor:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='autor' value ='"+ obj.getAutor() + "'>" + obj.getAutor());
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Valor:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='valor' value ='"+ obj.getValor() + "'>R$" + obj.getValor());
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='form-group clearfix'>");
                                        out.print("<div class='col-sm-2 text-right'>");
                                            out.print("<label class='control-label'>Sinopse:</label>");
                                        out.print("</div>");
                                        out.print("<div class='col-sm-8'>");
                                            out.print("<input type='hidden' name='sinopse' value ='"+ obj.getSinopse() + "'>" + obj.getSinopse());
                                        out.print("</div>");
                                    out.print("</div>");
                                    out.print("<div class='btn-group padding-left3' role='group' aria-label='...'>");
                                        out.print("<input type='submit' class='btn btn-default' value='Remover do carrinho'>");
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
</html>

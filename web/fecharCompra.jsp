
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
        <div id="Livros" class="row text-center">
            <%
                ArrayList<ObjLivro> carrinho = (ArrayList) session.getAttribute("carrinho");
                if(carrinho.isEmpty()){
                    out.print("<label class='control-label'>Carrinho vazio!</label>");
                }else{
                    out.print("<form action='validaCliente.jsp' method='post'>");
                        out.print("<label class='control-label'>Digite seu CPF(somente números):</label><input type='text' name='cpf'>");
                        out.print("<input type='submit' class='btn btn-default' value='Prosseguir'>");
                    out.print("</form>");
                }
            %>
        </div>
    </body>
</html>



<%@page import="java.util.ArrayList"%>
<%@page import="dao.ObjCliente"%>
<%@page import="dao.DaoClientes"%>
<%@page import="dao.ObjTipoPagamento"%>
<%@page import="dao.DaoTipoPagamento"%>
<%@page import="dao.DaoLivros"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:import url="head.jsp"/>
	<div class="row text-center">
		<div id="Menu" class="col-sm-12">
			<div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default"><a href="romance.jsp">Romance</a></button>
				<button type="button" class="btn btn-default active"><a href="comedia.jsp">Comédia</a></button>
				<button type="button" class="btn btn-default"><a href="drama.jsp">Drama</a></button>
				<button type="button" class="btn btn-default"><a href="infantil.jsp">Infantil</a></button>
				<button type="button" class="btn btn-default"><a href="terror.jsp">Terror</a></button>
				<button type="button" class="btn btn-default"><a href="ficcao_cientifica.jsp">Ficção Ciêntífica</a></button>
				<button type="button" class="btn btn-default"><a href="historia_nacional.jsp">História Nacional</a></button>
			</div>
		</div>
	</div>
        <div id="Livros" class="row text-center">
            <form action="addPedido.jsp" method="post">
                <%
                  
                  String nome = "";
                  String cpf = request.getParameter("cpf");
                  String rg = "";
                  String data = "";
                  String endereco = "";
                  String bairro = "";
                  String municipio = "";
                  String uf = "";
                  String tel_res = "";
                  String tel_cel = "";
                  String email = "";
                  int id = 0;
                  Class.forName("com.mysql.jdbc.Driver");
                  DaoClientes daoCliente = new DaoClientes();
                  ObjCliente cliente = daoCliente.pesquisarClientes(cpf);
                  if(cliente != null){
                    id = cliente.getId_cliente();
                    nome = cliente.getNome();
                    cpf = cliente.getCpf();
                    rg = cliente.getRg();
                    data = cliente.getData_nascimento();
                    endereco = cliente.getEndereco();
                    bairro = cliente.getBairro();
                    municipio = cliente.getMunicipio();
                    uf = cliente.getUf();
                    tel_res = cliente.getTelefone_res();
                    tel_cel = cliente.getTelefone_cel();
                    email = cliente.getEmail();
                    session.setAttribute("cliente", cliente);
                  }
                  out.print("<input type='hidden' name='id_cliente' value='"+id+"'>");
                  out.print("<label class='control-label'>Nome:</label><input class=\"form-control\" type='text' name='nome' value='"+nome+"'><br>");
                  out.print("<label class='control-label'>CPF:</label><input class=\"form-control\" type='text' name='cpf' value='"+cpf+"'><br>");
                  out.print("<label class='control-label'>RG:</label><input class=\"form-control\" type='text' name='rg' value='"+rg+"'><br>");
                  out.print("<label class='control-label'>Data de nascimento:</label><input class=\"form-control\" type='date' name='data_nascimento' value='"+data+"'><br>");
                  out.print("<label class='control-label'>Endereço:</label><input class=\"form-control\" type='text' name='endereco' value='"+endereco+"'><br>");
                  out.print("<label class='control-label'>Bairro:</label><input class=\"form-control\" type='text' name='bairro' value='"+bairro+"'><br>");
                  out.print("<label class='control-label'>Município:</label><input class=\"form-control\" type='text' name='municipio' value='"+municipio+"'><br>");
                  out.print("<label class='control-label'>UF:</label><input class=\"form-control\" type='text' name='uf' value='"+uf+"' maxlength=\"2\"><br>");
                  out.print("<label class='control-label'>Telefone Residencial:</label><input class=\"form-control\" type='tel' name='telefone_res' value='"+tel_res+"'><br>");
                  out.print("<label class='control-label'>Telefone Celular:</label><input class=\"form-control\" type='tel' name='telefone_cel' value='"+tel_cel+"'><br>");
                  out.print("<label class='control-label'>E-mail:</label><input class=\"form-control\" type='text' name='email' value='"+email+"'><br>");
                  out.print("<label class='control-label'>Escolha a forma de pagamento:</label><br>");
                  Class.forName("com.mysql.jdbc.Driver");
                  DaoTipoPagamento daoPagamento = new DaoTipoPagamento();
                  ArrayList <ObjTipoPagamento> pagamentos = daoPagamento.selecionarPagamentos();
                  if(!(pagamentos.isEmpty())){
                    for(ObjTipoPagamento obj:pagamentos){
                        out.print("<label class='control-label'>"+obj.getDescricao()+":</label><input type='radio' name='pagamento' value='"+obj.getId_tipoPagamento()+"'><br>");
                    }
                  }
                %>
                <br>
                <input type='submit' class='btn btn-default' value='Prosseguir'>
            </form>
        </div>
    </body>
</html>

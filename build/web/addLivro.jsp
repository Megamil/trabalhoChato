<%@page import="dao.objLivro"%>
<%@page import="dao.DaoLivros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="css/admin.css" type="text/css">
	<script type="text/javascript" src="scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
        <title>Inserindo Livro</title>
    </head>
    <body>
        
      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Livros</a></li>
              <li><a href="http://localhost:8080/Livraria/novoUsuario.jsp">Usuários</a></li>
              <li><a href="http://localhost:8080/Livraria/pedidos.jsp">Pedidos</a></li>
              <li><a href="http://localhost:8080/Livraria/vendas.jsp">Vendas</a></li>
          </div>
        </div>
      </nav>
        <div id="corpo">
        <%
            objLivro obj = new objLivro();
            
            obj.setTitulo(request.getParameter("titulo"));
            obj.setAutor(request.getParameter("autor"));
            obj.setISBN(request.getParameter("isbn"));
            obj.setSinopse(request.getParameter("sinopse"));
            obj.setValor(Double.parseDouble(request.getParameter("valor")));
            obj.setCategoria(Integer.parseInt(request.getParameter("categoria")));
            
            Class.forName("com.mysql.jdbc.Driver");
            DaoLivros dao = new DaoLivros();
            dao.inserirLivro(obj);
            out.print("<h1>Livro Cadastrado com Sucesso</h1> <br> <a type=\"button\" class=\"btn btn-success\" href=\"http://localhost:8080/Livraria/novoLivro.jsp\">Voltar</button>");
        %>
        </div>
    </body>
</html>

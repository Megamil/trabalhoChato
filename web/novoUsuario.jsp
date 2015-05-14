<%-- 
    Document   : addUsuario
    Created on : 14/05/2015, 13:59:57
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="css/admin.css" type="text/css">
	<script type="text/javascript" src="scripts/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
        <title>Administrativo</title>
    </head>
    <body>
      <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="http://localhost:8080/Livraria/novoLivro.jsp">Livros</a></li>
              <li class="active"><a href="#">Usuários</a></li>
              <li><a href="http://localhost:8080/Livraria/pedidos.jsp">Pedidos</a></li>
              <li><a href="http://localhost:8080/Livraria/vendas.jsp">Vendas</a></li>
          </div>
        </div>
      </nav>
        
        <div id="corpo" align="center">
            <form action="addUsuario.jsp" method="post">
                <fieldset>
                    <legend>Novo Usuário:</legend>
                    Usuário:<input class="form-control" type="text" name="usuario">
                    Senha:<input class="form-control" type="password" name="senha">
                    CPF:<input class="form-control" type="text" name="cpf">
                    <input class="btn btn-success" type="submit" value="Criar"> 
                </fieldset>
            </form>
        </div>
    </body>
</html>
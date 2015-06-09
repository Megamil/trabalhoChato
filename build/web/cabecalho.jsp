
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
              
               <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Livros <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="novoLivro.jsp">Novo</a></li>
                  <li><a href="todosLivros.jsp">Todos</a></li>
                </ul>
              </li>
              
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Usuários <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="novoUsuario.jsp">Novo</a></li>
                  <li><a href="todosUsuarios.jsp">Todos</a></li>
                </ul>
              </li>
       
              <li><a href="relatorioPedidos.jsp">Pedidos</a></li>
            </ul>
           <!--Parte do menu fixo a direita-->
          <ul class="nav navbar-nav navbar-right">
                <li> <a href="/Livraria">Sair</a> </li>
          </ul>
          <!--Parte do menu fixo a direita FIM-->
              
          </div>   
        </div>
      </nav>
        <div id="corpo">
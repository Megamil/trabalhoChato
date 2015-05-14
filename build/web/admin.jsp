<%-- 
    Document   : admin
    Created on : 14/05/2015, 10:14:56
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
              <li><a href="#">Livros</a></li>
              <li><a href="#">Usuários</a></li>
              <li><a href="#">Pedidos</a></li>
              <li><a href="#">Vendas</a></li>
          </div>
        </div>
      </nav>
        
        <div id="corpo">
            <%

                out.println("Seja Bem vindo!");
            
            %>
        </div>
    </body>
</html>

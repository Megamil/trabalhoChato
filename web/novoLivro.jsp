<%-- 
    Document   : novoLivro
    Created on : 14/05/2015, 11:35:32
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
              <li class="active"><a href="#">Livros</a></li>
              <li><a href="#">Usuários</a></li>
              <li><a href="#">Pedidos</a></li>
              <li><a href="#">Vendas</a></li>
          </div>
        </div>
      </nav>
        
        <div id="corpo" align="center">
            <form action="addLivro.jsp" method="post">
                <fieldset>
                    <legend>Novo Livro:</legend>
                    Título:
                    <input class="form-control" type="text" name="titulo">
                    Autor:
                    <input class="form-control" type="text" name="autor">
                    ISBN:
                    <input class="form-control" type="text" name="isbn">
                    Sinopse:
                    <input class="form-control" type="text" name="sinopse">
                    Valor:
                    <input class="form-control" type="text" name="valor">
                    Categoria:
                    <select class="form-control" name="categoria">
                        
                        <option value="">Selecione</option>
                        <option value="1">Romance</option>
                        <option value="2">Comédia</option>
                        <option value="3">Drama</option>
                        <option value="4">Infantil</option>
                        <option value="5">Terror</option>
                        <option value="6">Ficção Científica</option>
                        <option value="7">História Nacional</option>

                    </select><br>

                    <input class="btn btn-success" type="submit" value="Gravar"> 
                </fieldset>
        </form>
        </div>
    </body>
</html>


<%@page import="dao.ObjLivro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
	<title>Book Stack - A sua loja de livros preferida.</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="css/bookstack.css" type="text/css">
	<script type="text/javascript" src="scripts/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="scripts/login.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
        <style>
            a{
                style:none;
                color:inherit;
            }
            a:hover{
                style:none;
                color:inherit;
            }
        </style>
</head>
<body>
    <%
        if(session.getAttribute("carrinho") == null){
            ArrayList <ObjLivro> carrinho = new ArrayList();
            session.setAttribute("carrinho",carrinho);
        }
    %>
<div id="Wrapper">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header float-right">
				<a class="navbar-brand" href="#" id="UsuarioLogado">
					<span class="glyphicon glyphicon-user"></span>
					Logar
				</a>
                                <a class="navbar-brand" href="fecharCompra.jsp">
                                    <span class="glyphicon glyphicon-shopping-cart"></span>
                                    Fechar Compra
                                </a>
			</div>
		</div>
	</nav>
        <div id="logar">
            <form method="post" action="login.jsp">
                <table>
                    <tr>
                        <td><input class="form-control" type="text" name="usuario" placeholder="Usuário" style="max-width:80px"></td>
                        <td>
                            <div class="input-group">
                              <input class="form-control" type="password" name="senha" placeholder="Senha" style="max-width:80px">
                              <span class="input-group-btn">
                                <button class="btn btn-info" type="submit" name="enviar">Entrar</button>
                              </span>
                            </div><!-- /input-group -->
                            </div><!-- /.row -->
                        </td>
                    </tr>
                </table>  
            </form>
        </div>
	<div class="row">
		<div id="Logo"></div>
	</div>
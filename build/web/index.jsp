<%-- 
    Document   : index
    Created on : 14/05/2015, 09:08:10
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
</head>
<body>

<div id="Wrapper">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header float-right">
				<a class="navbar-brand" href="#" id="UsuarioLogado">
					<span class="glyphicon glyphicon-user"></span>
					Logar
				</a>
				<a class="navbar-brand" href="#">
					<span class="glyphicon glyphicon-shopping-cart"></span>
					Carrinho de Compras
				</a>
			</div>
		</div>
	</nav>
     <div id="logar">
        <form method="post" action="login.jsp">
            <input type="text" name="usuario" placeholder="Usuário">
            <input type="password" name="senha" placeholder="Senha">
            <button type="submit" name="enviar">Entrar</button>
        </form>
    </div>
    
        <div class="row">
		<div id="Logo"></div>
	</div>
	<div class="row text-center">
		<div id="Menu" class="col-sm-12">
			<div class="btn-group" role="group" aria-label="...">
				<button type="button" class="btn btn-default active">Romance</button>
				<button type="button" class="btn btn-default">Comédia</button>
				<button type="button" class="btn btn-default">Drama</button>
				<button type="button" class="btn btn-default">Infantil</button>
				<button type="button" class="btn btn-default">Terror</button>
				<button type="button" class="btn btn-default">Ficção Científica</button>
				<button type="button" class="btn btn-default">História Nacional</button>
			</div>
		</div>
	</div>
	<div id="Livros" class="row">
		<!--Colocar o código abaixo dentro de um foreach para cada produto encontrado no banco-->
		<div class="livro-item col-sm-12 margin-top10">
			<div class="form-group clearfix col-sm-4">
				<div class="livro-imagem"><img src="css/images/o_ultimo_beijo.jpg"/></div>
			</div>
			<div class="col-sm-8 padding0">
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Código:</label>
					</div>
					<div class="col-sm-8">174602</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Categoria:</label>
					</div>
					<div class="col-sm-8">Romance</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Título:</label>
					</div>
					<div class="col-sm-8">O Último Beijo</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Valor:</label>
					</div>
					<div class="col-sm-8">R$ 79,90</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Sinopse:</label>
					</div>
					<div class="col-sm-8 sinopse">
						Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.
					</div>
				</div>
				<div class="form-group clearfix">
					<div class="btn-group padding-left3" role="group" aria-label="...">
						<button type="button" class="btn btn-default">Adicionar ao carrinho</button>
					</div>
				</div>
			</div>
		</div>
		<!--Colocar o código acima dentro de um foreach para cada produto encontrado no banco-->
				<!--Colocar o código abaixo dentro de um foreach para cada produto encontrado no banco-->
		<div class="livro-item col-sm-12 margin-top10">
			<div class="form-group clearfix col-sm-4">
				<div class="livro-imagem"><img src="css/images/um_romance_inesquecivel.jpg"/></div>
			</div>
			<div class="col-sm-8 padding0">
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Código:</label>
					</div>
					<div class="col-sm-8">174782</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Categoria:</label>
					</div>
					<div class="col-sm-8">Romance</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Título:</label>
					</div>
					<div class="col-sm-8">Um Romance Inesquecível</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Valor:</label>
					</div>
					<div class="col-sm-8">R$ 65,00</div>
				</div>
				<div class="form-group clearfix">
					<div class="col-sm-2 text-right">
						<label class="control-label">Sinopse:</label>
					</div>
					<div class="col-sm-8 sinopse">
						Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.
					</div>
				</div>
				<div class="form-group clearfix">
					<div class="btn-group padding-left3" role="group" aria-label="...">
						<button type="button" class="btn btn-default">Adicionar ao carrinho</button>
                                                
					</div>
				</div>
			</div>
		</div>
		<!--Colocar o código acima dentro de um foreach para cada produto encontrado no banco-->
	</div>
</div>

</body>
<script type="text/javascript">


</script>
</html>

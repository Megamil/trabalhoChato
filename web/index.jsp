

<%@page import="java.util.ArrayList"%>
<%@page import="dao.ObjLivro"%>
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
    <%
        if(session.getAttribute("carrinho") == null){
            ArrayList <ObjLivro> carrinho = new ArrayList();
            session.setAttribute("carrinho",carrinho);
        }
    %>
    <jsp:forward page="romance.jsp"/>
</body>
<script type="text/javascript">


</script>
</html>

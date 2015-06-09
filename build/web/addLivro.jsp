<%@page import="dao.ObjLivro"%>
<%@page import="dao.DaoLivros"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:import url="cabecalho.jsp"/>
        
        <%
            ObjLivro obj = new ObjLivro();
            String valor = request.getParameter("valor").replaceAll(",", ".");
            obj.setTitulo(request.getParameter("titulo"));
            obj.setAutor(request.getParameter("autor"));
            obj.setISBN(request.getParameter("isbn"));
            obj.setSinopse(request.getParameter("sinopse"));
            obj.setValor(Double.parseDouble(valor));
            obj.setCategoria(Integer.parseInt(request.getParameter("categoria")));
            obj.setCaminho_imagem(request.getParameter("caminho_imagem"));
            
            Class.forName("com.mysql.jdbc.Driver");
            DaoLivros dao = new DaoLivros();
            dao.inserirLivro(obj);
            out.print("<h1>Livro Cadastrado com Sucesso</h1> <br> <a type=\"button\" class=\"btn btn-success\" href=\"novoLivro.jsp\">Voltar</a>");
        %>

    <c:import url="footer.jsp"/>

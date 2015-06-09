<%@page import="dao.ObjLogin"%>
<%@page import="dao.DaoLogin"%>

        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:import url="cabecalho.jsp"/>
        
        <div align="center">
            <%     
                if(request.getParameter("senha").equals(request.getParameter("senha2"))){
                
                    ObjLogin novoLogin = new ObjLogin();
                    novoLogin.setUsuario(request.getParameter("usuario"));
                    novoLogin.setSenha(request.getParameter("senha"));
                    Class.forName("com.mysql.jdbc.Driver");
                    DaoLogin dao = new DaoLogin();
                    dao.inserirLogin(novoLogin);
                    out.print("<h1>Usuário Cadastrado com Sucesso</h1> <br> <a type=\"button\" class=\"btn btn-success\" href=\"http://localhost:8080/Livraria/novoUsuario.jsp\">Voltar</a>");
                    
                } else {
                    out.print("<h1>Senhas diferentes</h1> <br> <a type=\"button\" class=\"btn btn-success\" href=\"novoUsuario.jsp\">Voltar</a>");
                }
                
            %>
        </div>
    <c:import url="footer.jsp"/>
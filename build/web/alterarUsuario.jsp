
<%@page import="dao.ObjLogin"%>
<%@page import="dao.DaoLogin"%>
<%@page import="dao.DaoLivros"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:import url="cabecalho.jsp"/>
        
        <% DaoLogin dao = new DaoLogin(); 
        
        ObjLogin obj = dao.buscar(Integer.parseInt(request.getParameter("id")));
        
        %>
                
        <div align="center">
            <form action="updateUsuario.jsp" method="post">
                <input class="form-control hidden" type="text" name="id" value="<%= obj.getId()%>">
                <fieldset>
                    <legend>Novo Usuário:</legend>
                    Usuário:
                    <input class="form-control" type="text" name="usuario" value="<%= obj.getUsuario() %>">
                    Nova Senha:
                    <input class="form-control" type="password" name="senha">
                    Confirme a Senha:
                    <input class="form-control" type="password" name="senha2">
                    <input class="btn btn-success" type="submit" value="Atualizar">
                </fieldset>
            </form>
        </div>
    <c:import url="footer.jsp"/>

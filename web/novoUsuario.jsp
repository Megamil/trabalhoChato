
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <c:import url="cabecalho.jsp"/>
                
        <div align="center">
            <form action="addUsuario.jsp" method="post">
                <fieldset>
                    <legend>Novo Usuário:</legend>
                    Usuário:
                    <input class="form-control" type="text" name="usuario">
                    Senha:
                    <input class="form-control" type="password" name="senha">
                    Confirme a Senha:
                    <input class="form-control" type="password" name="senha2">
                    <input class="btn btn-success" type="submit" value="Criar">
                </fieldset>
            </form>
        </div>
    <c:import url="footer.jsp"/>
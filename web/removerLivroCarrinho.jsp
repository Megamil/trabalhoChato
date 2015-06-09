
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ObjLivro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        ArrayList<ObjLivro> carrinho = (ArrayList) session.getAttribute("carrinho");
        ArrayList<Integer> quantidade = (ArrayList) session.getAttribute("quantidade");
        for(ObjLivro obj :carrinho){
            if(obj.getId() == Integer.parseInt(request.getParameter("id_livro"))){
                quantidade.remove(carrinho.indexOf(obj));
                carrinho.remove(obj);
                break;
            }
        }
        session.setAttribute("carrinho", carrinho);
        response.sendRedirect("meuCarrinho.jsp");
    %>
</html>

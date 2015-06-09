

<%@page import="java.util.ArrayList"%>
<%@page import="dao.ObjLivro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%  
        ArrayList <ObjLivro> carrinho = (ArrayList) session.getAttribute("carrinho");
         ArrayList <Integer> quantidade;
        if(session.getAttribute("quantidade") == null){
           quantidade = new ArrayList();
        } else {
            quantidade = (ArrayList) session.getAttribute("quantidade");
        }
        session.setAttribute("quantidade", quantidade);
        int index = -1;
        ObjLivro livroAdicionado = new ObjLivro();
        livroAdicionado.setId(Integer.parseInt(request.getParameter("id_livro")));
        for(ObjLivro obj:carrinho){
            if(obj.getId()== livroAdicionado.getId()){
                index = carrinho.indexOf(obj);
            }
        }
        if(index <= -1){
            livroAdicionado.setAutor(request.getParameter("autor"));
            livroAdicionado.setCaminho_imagem(request.getParameter("caminho_imagem"));
            livroAdicionado.setTitulo(request.getParameter("titulo"));
            livroAdicionado.setValor(Double.parseDouble(request.getParameter("valor")));
            livroAdicionado.setISBN(request.getParameter("isbn"));
            livroAdicionado.setSinopse(request.getParameter("sinopse"));
            livroAdicionado.setCategoria(Integer.parseInt(request.getParameter("categoria")));
            carrinho.add(livroAdicionado);
            quantidade.add(1);
            session.setAttribute("carrinho", carrinho);
            session.setAttribute("quantidade", quantidade);
        } else {
            quantidade.add(index, (quantidade.get(index)+1));
        }
        response.sendRedirect("meuCarrinho.jsp");
    %>
    
</html>

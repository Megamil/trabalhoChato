

<%@page import="dao.ObjPedido"%>
<%@page import="dao.DaoPedido"%>
<%@page import="dao.ObjDetalhesDoPedido"%>
<%@page import="dao.ObjLivro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoClientes"%>
<%@page import="dao.ObjCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        ArrayList<ObjLivro> livros = (ArrayList) session.getAttribute("carrinho");
        ArrayList<Integer> quantidade = (ArrayList) session.getAttribute("quantidade");
        ArrayList<ObjDetalhesDoPedido> detalhes = new ArrayList();
        ObjCliente clienteAntigo = (ObjCliente) session.getAttribute("cliente");
        ObjCliente novoCliente = new ObjCliente();
        ObjPedido pedido = new ObjPedido();
        String data = request.getParameter("data_nascimento");
        if(data.indexOf("/") != -1){
            data.replaceAll("/", "-");
            String[] tmp = data.split("-");
            data = tmp[2]+"-"+tmp[1]+"-"+tmp[0];
        }
        
        novoCliente.setNome(request.getParameter("nome"));
        novoCliente.setCpf(request.getParameter("cpf"));
        novoCliente.setRg(request.getParameter("rg"));
        novoCliente.setEndereco(request.getParameter("endereco"));
        novoCliente.setBairro(request.getParameter("bairro"));
        novoCliente.setMunicipio(request.getParameter("municipio"));
        novoCliente.setData_nascimento(data);
        novoCliente.setUf(request.getParameter("uf"));
        novoCliente.setTelefone_cel(request.getParameter("telefone_cel"));
        novoCliente.setTelefone_res(request.getParameter("telefone_res"));
        novoCliente.setEmail(request.getParameter("email"));
        
        if(clienteAntigo != null){
            novoCliente.setId_cliente(clienteAntigo.getId_cliente());
            session.removeAttribute("cliente");
            if(!novoCliente.equals(clienteAntigo)){
                Class.forName("com.mysql.jdbc.Driver");
                DaoClientes daoCliente = new DaoClientes();
                daoCliente.atualizaCliente(novoCliente);
            }
            pedido.setId_cliente(novoCliente.getId_cliente());
        } else {
            Class.forName("com.mysql.jdbc.Driver");
            DaoClientes daoCliente = new DaoClientes();
            daoCliente.inserirClientes(novoCliente);
            pedido.setId_cliente(-1);
        }
        
        float valor = 0;
        for(ObjLivro obj: livros){
            ObjDetalhesDoPedido novoDetalhe = new ObjDetalhesDoPedido();
            novoDetalhe.setId_livro(obj.getId());
            novoDetalhe.setQuantidade(quantidade.get(livros.indexOf(obj)));
            detalhes.add(novoDetalhe);
            valor += obj.getValor() * novoDetalhe.getQuantidade();
        }
        
        
        pedido.setId_tipopagamento(Integer.parseInt(request.getParameter("pagamento")));
        pedido.setValor(valor);
        Class.forName("com.mysql.jdbc.Driver");
        DaoPedido daoPedido = new DaoPedido();
        daoPedido.inserirPedido(pedido,detalhes);
        session.removeAttribute("carrinho");
        session.removeAttribute("quantidade");
        response.sendRedirect("compraEfetuada.jsp");
    %>
</html>

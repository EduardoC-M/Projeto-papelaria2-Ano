<%@page import="java.util.List"%>
<%@page import="br.com.papermaker.Classes.Carrinho" %>
<%@page import="br.com.papermaker.Dao.carrinhoDao" %>
<%@page import="br.com.papermaker.Dao.ProdutosDao" %>
<%@page import="br.com.papermaker.Classes.Produtos" %>
<%@page import="java.sql.SQLException" %>

<%
    carrinhoDao carrD = new carrinhoDao(); 
    List<Carrinho> listCarrinho = carrD.listCarrinho();

    if (listCarrinho.isEmpty()) {
        out.println("<script>alert('O carrinho está vazio!'); window.location.href='verCarrinho.jsp';</script>");
        return;
    }
    
    double totalVenda = 0;

    for (Carrinho carr : listCarrinho) {
        totalVenda = carr.getPreco_carrinho() * carr.getQuantidadeC();
    }
 Carrinho carr = new Carrinho();
    try {
       
        
        Produtos prod = new Produtos();
        carr.setTotalVendas(totalVenda);
        carrD.salvarVenda(carr);

        carrD.limparCarrinho();

        response.sendRedirect("relatorio.jsp");
    } catch (SQLException e) {
        out.println("<script>alert('Erro ao processar a venda!'); window.location.href='verCarrinho.jsp';</script>");
        e.printStackTrace();
    }
    

%>

<%@page import="java.util.List"%>
<%@page import="br.com.papermaker.Classes.Produtos" %>
<%@page import="br.com.papermaker.Dao.ProdutosDao" %>
<%@page import="br.com.papermaker.Classes.Carrinho" %>
<%@page import="br.com.papermaker.Dao.carrinhoDao" %>
<% 

    Carrinho carr = new Carrinho();
    carrinhoDao carrD = new carrinhoDao();

int codCarr = Integer.parseInt(request.getParameter("Cod_produto").trim());
String nomeCarr = request.getParameter("Nome_produto").trim();
double precoCarr = Double.parseDouble(request.getParameter("Preco_produto").trim());
int quantCarr = Integer.parseInt(request.getParameter("Quantidade").trim());
String marcaCarr = request.getParameter("Marca_produto").trim();

    Produtos prod = new Produtos();
    ProdutosDao prodD = new ProdutosDao();
            prod.setCod_produto(codCarr);
            carr.setCod_carrinho(codCarr);
            carr.setNome_carrinho(nomeCarr);
            carr.setPreco_carrinho(precoCarr);
            carr.setQuantidadeC(1);
            carr.setMarca_carrinho(marcaCarr);
            carrD.adicionarTDCarrinho(carr);
            prodD.carrinho(prod);
            
         response.sendRedirect("carrinho.jsp");
%>
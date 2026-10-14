<%@page import="br.com.papermaker.Classes.Produtos"%>
<%@page import="br.com.papermaker.Dao.ProdutosDao"%>
<%
  int cod = Integer.parseInt(request.getParameter("Cod_produto").trim());
  
  Produtos prod = new Produtos();
  ProdutosDao prodD = new ProdutosDao();
  
  prod.setCod_produto(cod);
  prodD.ExcluirProduto(prod);
  response.sendRedirect("adicionar.jsp");

%>

<%@page import="br.com.papermaker.Dao.carrinhoDao"%>
<%@page import="br.com.papermaker.Classes.Carrinho"%>
<%
  int cod = Integer.parseInt(request.getParameter("Cod_carrinho").trim());
  
  Carrinho carr = new Carrinho();
  carrinhoDao carrD = new carrinhoDao();
  
  carr.setCod_carrinho(cod);
  carrD.ExcluirCarrinho(carr);
  response.sendRedirect("carrinho.jsp");

%>

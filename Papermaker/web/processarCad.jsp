<%@page import="java.util.List"%>
<%@page import="br.com.papermaker.Classes.Produtos" %>
<%@page import="br.com.papermaker.Dao.ProdutosDao" %>
        <%
            String nome = request.getParameter("nome");
            double preco = Double.parseDouble(request.getParameter("preco").trim());
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));
            String marca = request.getParameter("marca");
            
            Produtos prod = new Produtos();
            ProdutosDao prodD = new ProdutosDao();
            
            prod.setNome_produto(nome);
            prod.setPreco_produto(preco);
            prod.setQuantidade(quantidade);
            prod.setMarca_produto(marca);
            
            prodD.cadastrarProduto(prod);
            response.sendRedirect("adicionar.jsp");

      %>
     
      
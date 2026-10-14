<%@page import="br.com.papermaker.Classes.Produtos"%>
<%@page import="br.com.papermaker.Dao.ProdutosDao"%>
<%

    int cod = Integer.parseInt(request.getParameter("cod").trim());
    String nome = request.getParameter("nome").trim();
    double preco = Double.parseDouble(request.getParameter("preco").trim());
    int quantidade = Integer.parseInt(request.getParameter("quantidade").trim());
    String marca = request.getParameter("marca").trim();

    Produtos prod = new Produtos();
    ProdutosDao prodD = new ProdutosDao();

            prod.setCod_produto(cod);
            prod.setNome_produto(nome);
            prod.setPreco_produto(preco);
            prod.setQuantidade(quantidade);
            prod.setMarca_produto(marca);

         prodD.alteraProduto(prod);
         response.sendRedirect("adicionar.jsp");
%>
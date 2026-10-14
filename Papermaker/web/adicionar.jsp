<!DOCTYPE html>
<html lang="pt-br"> 
    
<%@page import="java.util.List"%>
<%@page import="br.com.papermaker.Classes.Produtos" %>
<%@page import="br.com.papermaker.Dao.ProdutosDao" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Data/Style/style.css">
    <title>Adicionar ao Carrinho - PAPER MAKER</title>
    <style>
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #1e90ff;
            color: white;
            border-radius: 10px;
            overflow: hidden;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid white;
        }
        th {
            background-color: #4682b4;
        }
        .add-btn {
            background-color: #ffffff;
            color: #1e90ff;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            font-size: 18px;
            border-radius: 5px;
        }
        .add-btn:hover {
            background-color: #cccccc;
        }
    </style>
</head>
<body>
    <% 
    ProdutosDao prodD = new ProdutosDao(); 
    List <Produtos> listProdutos = prodD.listProdutos();
    %>

<header>
    <h1>Adicionar ao Carrinho</h1>
</header>

<div class="container">
    <table>
          <tr>
                <th>Codigo</th>
                <th>Nome</th>
                <th>Preço</th>
                <th>Quantidade</th> 
                <th>Marca</th>
                <th>Alterar</th>
                <th>Excluir</th>
                <th>Adicionar</th>
            </tr>
            <% 
                for(Produtos prod :listProdutos) {
            %>
            <tr>
                <td>
                   <% out.println(prod.getCod_produto()); %> 
                </td>
                
                <td>
                   <% out.println(prod.getNome_produto()); %> 
                </td>
                
                <td>
                   <% out.println(prod.getPreco_produto()); %> 
                </td>
                
                <td>
                   <% out.println(prod.getQuantidade()); %> 
                </td>
                
                <td>
                   <% out.println(prod.getMarca_produto()); %> 
                </td>
                <td>
                   <a href="alteraprodutos.jsp?Cod_produto=<%= prod.getCod_produto() %>&Nome_produto=<%= prod.getNome_produto() %>&Preco_produto=<%= prod.getPreco_produto() %>&Quantidade=<%= prod.getQuantidade() %>&Marca_produto=<%= prod.getMarca_produto() %>">Alterar</a>
                </td>
                <td> 
                    <a href="processaExclusao.jsp?Cod_produto=<% out.println(prod.getCod_produto()); %>">Excluir</a>
                    </td>
                    <td> 
                    
                    <% if (prod.getQuantidade() > 0) { %><a href="processaCarrinho.jsp?Cod_produto=<%= prod.getCod_produto() %>&Nome_produto=<%= prod.getNome_produto() %>&Preco_produto=<%= prod.getPreco_produto() %>&Quantidade=<%= prod.getQuantidade() %>&Marca_produto=<%= prod.getMarca_produto() %>">Adicionar</a>
                      <% } else { %>
                         <span style="color: gray;">Indisponível</span>
                              <% } %>

                    
                    </td>
            </tr> 
            
        <% } %>
    </table>
    <br>
    <button onclick="window.location.href='index.jsp'">Voltar</button>
</div>
    
</body>
</html>
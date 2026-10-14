<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="br.com.papermaker.Classes.Carrinho" %>
<%@page import="br.com.papermaker.Dao.carrinhoDao" %>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Carrinho - PAPER MAKER</title>
    <link rel="stylesheet" href="Data/Style/style.css">
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
    carrinhoDao carrD = new carrinhoDao(); 
    List <Carrinho> listCarrinho = carrD.listCarrinho();
    %>
<header>
    <h1>Ver Carrinho</h1>
</header>

<
<div class="container">
    <table>
          <tr>
                <th>Codigo</th>
                <th>Nome</th>
                <th>Preço</th>
                <th>Quantidade</th> 
                <th>Marca</th>
                <th>Remover</th>
            </tr>
            <% 
                for(Carrinho carr :listCarrinho) {
            %>
            <tr>
                <td>
                   <% out.println(carr.getCod_carrinho()); %> 
                </td>
                
                <td>
                   <% out.println(carr.getNome_carrinho()); %> 
                </td>
                
                <td>
                   <% out.println(carr.getPreco_carrinho()); %> 
                </td>
                
                <td>
                   <% out.println(carr.getQuantidadeC()); %> 
                </td>
                
                <td>
                   <% out.println(carr.getMarca_carrinho()); %> 
                </td>
                <td> 
                    <a href="processaRemoveCarr.jsp?Cod_carrinho=<% out.println(carr.getCod_carrinho()); %>">Remover</a>
                    </td>
            </tr>
            
        <% } %>
    </table>
    
    
</div>
   
    <br>
    <br>
    <br>
    <div class="container">
    <button onclick="window.location.href='processaTotalVendas.jsp'">Finalizar Compra</button>
    <button onclick="window.location.href='index.jsp'">Voltar</button>
    
    </div>

</body>
</html>

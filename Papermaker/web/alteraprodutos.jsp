<%@page import="java.util.List"%>
<%@page import="br.com.papermaker.Classes.Produtos" %>
<%@page import="br.com.papermaker.Dao.ProdutosDao" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <link rel="stylesheet" href="Data/Style/stycada.css">
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alterar Produto - PAPER MAKER</title>
    
</head>
<% 
int cod = Integer.parseInt(request.getParameter("Cod_produto").trim());
String nomeAlt = request.getParameter("Nome_produto").trim();
double precoAlt = Double.parseDouble(request.getParameter("Preco_produto").trim());
int quantAlt = Integer.parseInt(request.getParameter("Quantidade").trim());
String marcaAlt = request.getParameter("Marca_produto").trim();


%>
<body>
<header>
    <h1>Alterar Produto</h1>
</header>

<div class="container">
    <form id="frmAltProd" method="post" action="processaAlteracao.jsp">
        <input type="text" id="cod" name="cod" value="<% out.print(cod); %>" style="display: none">
        <label for="nome">Nome do Produto:</label><br>
        <input type="text" name="nome" value="<% out.print(nomeAlt); %>" required><br><br>
        
        <label for="preco">Preço:</label><br>
        <input type="number" name="preco" step="0.01" value="<% out.print(precoAlt); %>"required><br><br>

        <label for="quantidade">Quantidade:</label><br>
        <input type="number" name="quantidade" value="<% out.print(quantAlt); %>" required><br><br>
       
        <label for="marca">Marca do Produto:</label><br>
        <input type="text" name="marca" value="<% out.print(marcaAlt); %>" required><br><br>

        <button type="submit" name="enviarAltera" value="Altera">Alterar Produto</button>
    </form>
    <br>
    <button onclick="window.location.href='index.jsp'">Voltar</button>
</div>

</body>
</html>

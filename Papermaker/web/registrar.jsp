<%@page import="java.util.List"%>
<%@page import="br.com.papermaker.Classes.Produtos" %>
<%@page import="br.com.papermaker.Dao.ProdutosDao" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <link rel="stylesheet" href="Data/Style/stycada.css">
    <meta charset="UTF-8">    <link rel="stylesheet" href="stycada.css">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Produto - PAPER MAKER</title>
    
</head>
<body>
<header>
    <h1>Cadastrar Produto</h1>
</header>

<div class="container">
    <form id="frmCadProd" method="post" action="processarCad.jsp">
        <label for="nome">Nome do Produto:</label><br>
        <input type="text" name="nome" required><br><br>
        
        <label for="preco">Preço:</label><br>
        <input type="number" name="preco" step="0.01" required><br><br>

        <label for="quantidade">Quantidade:</label><br>
        <input type="number" name="quantidade" required><br><br>
       
        <label for="marca">Marca do Produto:</label><br>
        <input type="text" name="marca" required><br><br>

        <button type="submit" name="enviarCadastro" value="Cadastrar">Cadastrar Produto</button>
    </form>
    <br>
    <button onclick="window.location.href='index.jsp'">Voltar</button>
</div>

</body>
</html>

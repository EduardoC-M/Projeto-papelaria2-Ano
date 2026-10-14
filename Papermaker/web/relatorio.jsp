<%@page import="br.com.papermaker.Classes.Carrinho"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <% 
    Carrinho carr = new Carrinho();
    %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatório de Lucros - PAPER MAKER</title>
    <link rel="stylesheet" href="Data/Style/style.css">
</head>
<body>

<header>
    <h1>Relatório de Lucros</h1>
</header>

<div class="container">
    <p>Total de Lucros: R$ <%= carr.TotalVendas %></p>

    <button onclick="window.location.href='index.jsp'">Voltar</button>
</div>

</body>
</html>

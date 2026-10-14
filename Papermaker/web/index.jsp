<!DOCTYPE html>
<html lang="pt-br">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PAPER MAKER</title>
    <style>
        body {
    font-family: 'Arial', sans-serif;
    background-color: #f8f8f8;
    color: #333;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

header {
    background-color: #1e90ff;
    color: white;
    text-align: center;
    padding: 20px;
    font-size: 2em;
    font-weight: bold;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 900px;
    margin-bottom: 30px;
}

.container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-color: #ffffff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 900px;
}

.options {
    text-align: left;
    width: 100%;
}

.options h2 {
    background-color: #1e90ff;
    color: white;
    display: inline-block;
    padding: 10px 20px;
    border-radius: 5px;
    font-size: 1.4em;
    margin-bottom: 20px;
}

.options ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
}

.options li {
    display: flex;
    align-items: center;
    margin: 15px 0;
    font-size: 1.1em;
}

.options li span {
    background-color: #1e90ff;
    color: white;
    border-radius: 50%;
    padding: 8px 12px;
    margin-right: 15px;
    font-weight: bold;
}

.options a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    transition: color 0.3s ease;
}

.options a:hover {
    color: #1e90ff; 
}


        
    </style>
</head>
<body>

    <div class="container">
        <header>
            PAPER MAKER
        </header>   
        <div class="options">
            <h2>Opções</h2>
            <ul>
                <li><span>1</span> <a href="registrar.jsp">Cadastrar produto</a></li>
                <li><span>2</span> <a href="carrinho.jsp">Ver carrinho</a></li>
                <li><span>3</span> <a href="adicionar.jsp">Adicionar ao carrinho</a></li>
                <li><span>4</span> <a href="relatorio.jsp">Relatório dos lucros</a></li>
                <li><span>5</span> <a href="logout.jsp">Sair</a></li>
            </ul>
        </div>
    </div>

</body>
</html>

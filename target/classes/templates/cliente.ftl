<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Clientes ${cliente.nome}!</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/cliente.css'/>"/>
</head>
<body>
<div class="container">
    <h1>Cliente</h1>
    Id: ${cliente.id}
    <br/>
    Nome: ${cliente.nome}
    <br/>
    CPF: ${cliente.cpf}
    <br/>
    Telefone: ${cliente.telefone}
    <br/>
    Telefone: ${cliente.cidade.nome}
</div>
</body>
</html>
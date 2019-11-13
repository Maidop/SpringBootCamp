<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cidade!</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/cliente.css'/>"/>
</head>
<body>
<div class="container">
    <h1>Cliente</h1>
    Id: ${cidade.id}
    <br/>
    Nome: ${cidade.nome}
    <br/>
    IBGE: ${cidade.codigoIbge}
    <br/>
    UF: ${cidade.uf}
</div>
</body>
</html>
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
<#macro padraozin>
    <div class="menu"> <#-- MENU-->
        <ul>
            <li><a href="/screen-cliente/">Clientes</a></li>
            <li><a href="/screen-cidade/">Cidades</a></li>
            <li><a href="/screen-pedido/">Pedidos</a></li>
            <li><a href="/screen-produto/">Produtos</a></li>
        </ul>
    </div>
    <#nested>
</#macro>

</body>
</html>

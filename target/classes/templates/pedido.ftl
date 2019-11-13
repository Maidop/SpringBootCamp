<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pedidos Cliente!</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/produto.css'/>"/>
</head>
<body>
<div class="container">
    <h1>Pedidos</h1>
    <table class="bordinha">
        <thead>
        <tr class="bordinha">
            <th>
                ID
            </th>
            <th>
                Cliente
            </th>
            <th>
                Data Emissão
            </th>
            <th>
                Total
            </th>
            <th>
                Lista de Itens
            </th>
        </tr>
        </thead>
        <tbody>
        <#list pedidoList as pedido>
            <tr>
                <td>
                    ${pedido.id}
                </td>
                <td>
                    ${pedido.cliente.nome}
                </td>
                <td>
                    ${pedido.dataEmissao}
                </td>
                <td>
                    ${pedido.total}
                </td>
                <td>
                    <a href="/screen-pedido/pedido?id=${pedido.id}" target="_blank">Itens Pedido</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>
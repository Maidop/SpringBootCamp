<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Itens pedido!</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/produto.css'/>"/>
</head>
<body>
<div class="container">
    <h1>Itens</h1>
    <table class="bordinha">
        <thead>
        <tr class="bordona">
            <th>
                ID
            </th>
            <th>
                Descrição
            </th>
            <th>
                Valor
            </th>
            <th>
                Quantidade
            </th>
            <th>
                Desconto
            </th>
        </tr>
        </thead>
        <tbody>
        <#list pedido.pedidoItemList as item>
            <tr>
                <td>
                    ${item.id}
                </td>
                <td>
                    ${item.produto.descricao}
                </td>
                <td>
                    ${item.valorUnitario}
                </td>
                <td>
                    ${item.quantidade}
                </td>
                <td>
                    ${item.desconto}
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>
<#import "/spring.ftl" as spring/>
<#import "layoutPadrao.ftl" as base>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista Clientes!</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/style.css'/>"/>
</head>
<body>

<@base.padraozin>
<div class="container">
    <h1>Cidades</h1>
    <table class="bordinha">
        <thead>
        <tr class="bordona">
            <th>
                ID
            </th>
            <th>
                Cidade
            </th>
            <th>
                IBGE
            </th>
            <th>
                Estado
            </th>
            <th>
                Pedidos da Cidade
            </th>
        </tr>
        </thead>
        <tbody>
        <#list cidadeList as cidades>
            <tr>
                <td>
                    ${cidades.id}
                </td>
                <td>
                    ${cidades.nome}
                </td>
                <td>
                    ${cidades.codigoIbge}
                </td>
                <td>
                    ${cidades.uf}
                </td>
                <td>
                    <a href="/screen-pedido/por-cidade?id=${cidades.id}">Pedidos da Cidade</a>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</@base.padraozin>
</body>
</html>
<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista Clientes!</title>
    <link rel="stylesheet"
          type="text/css" href="<@spring.url '/css/cliente.css'/>"/>
</head>
<body>
<div class="container">
    <h1>Clientes</h1>
    <table class="bordinha">
        <thead>
        <tr class="bordona">
            <th>
                ID
            </th>
            <th>
                Nome
            </th>
            <th>
                CPF
            </th>
            <th>
                Telefone
            </th>
            <th>
                Cidade
            </th>
        </tr>
        </thead>
        <tbody>
        <#list clienteList as clientes>
            <tr>
                <td>
                    ${clientes.id}
                </td>
                <td>
                    ${clientes.nome}
                </td>
                <td>
                    ${clientes.cpf}
                </td>
                <td>
                    ${clientes.telefone}
                </td>
                <td>
                    ${clientes.cidade.nome}
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>
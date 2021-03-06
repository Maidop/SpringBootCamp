<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pedidos!</title>
</head>
<body>
<div class="container">
    <h1>Pedidos</h1>
    <table>
        <thead>
        <tr>
            <th>
                ID
            </th>
            <th>
                Cliente
            </th>
            <th>
                Data de Emissão
            </th>
            <th>
                Total
            </th>
        </tr>
        </thead>
        <tbody>
        <#list pedidoList as pedido>
            <tr bgcolor="gray">
                <td>
                   <a href="/screen-pedido/por-id/${pedido.id}" target="_blank">${pedido.id}</a>
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
            </tr>
            <tr>
                <td colspan="4">
                    <table>
                        <thead>
                        <tr>
                            <th>
                                ID
                            </th>
                            <th>
                                Produto
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
                        <#list pedido.pedidoItemList as pedidoItem>
                            <tr>
                                <td>
                                    ${pedidoItem.id}
                                </td>
                                <td>
                                    ${pedidoItem.produto.descricao}
                                </td>
                                <td>
                                    ${pedidoItem.valorUnitario}
                                </td>
                                <td>
                                    ${pedidoItem.quantidade}
                                </td>
                                <td>
                                    ${pedidoItem.desconto}
                                </td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>
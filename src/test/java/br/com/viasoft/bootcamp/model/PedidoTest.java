package br.com.viasoft.bootcamp.model;

import org.junit.Before;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class PedidoTest {
    PedidoItem pItem;
    Pedido pedido;

//    @Before
//    public void before(){
//        pItem = new PedidoItem();
//        pItem.setValorUnitario(BigDecimal.TEN);
//        pItem.setDesconto(BigDecimal.valueOf(2));
//        pItem.setQuantidade(BigDecimal.ONE);
//
//        pedido = new Pedido();
//        pedido.getPedidoItemList().add(pItem);
//    }

    @Test
    public void verificaTotal(){
        pItem = new PedidoItem();
        pItem.setValorUnitario(BigDecimal.TEN);
        pItem.setDesconto(BigDecimal.valueOf(0));
        pItem.setQuantidade(BigDecimal.ONE);

        pedido = new Pedido();
        pedido.getPedidoItemList().add(pItem);
        pedido.setTotal(pItem.getValorTotal());

        assertEquals(BigDecimal.valueOf(10), pedido.getTotal());

    }

}
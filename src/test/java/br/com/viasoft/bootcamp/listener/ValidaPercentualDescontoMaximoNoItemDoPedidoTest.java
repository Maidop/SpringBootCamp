package br.com.viasoft.bootcamp.listener;

import br.com.viasoft.bootcamp.event.PedidoPreSave;
import br.com.viasoft.bootcamp.model.Pedido;
import org.junit.Test;

class ValidaPercentualDescontoMaximoNoItemDoPedidoTest {



    @Test(expected = RuntimeException.class)
    public void verificaValidacaoDePercentualMaximoDescontoItemPedido(){
        Pedido pedido = new Pedido();
        Object source = new Object();
        PedidoPreSave preSave = new PedidoPreSave(source, pedido);

    }

}
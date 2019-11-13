package br.com.viasoft.bootcamp.service;

import br.com.viasoft.bootcamp.data.PedidoData;
import br.com.viasoft.bootcamp.service.impl.PedidoServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

@RunWith(MockitoJUnitRunner.class)
public class PedidoServiceTest {

    @Mock
    private PedidoData pedidoData;

    @InjectMocks
    private PedidoServiceImpl serviceImpl;

    @Test
    public void verificaBuscaPorClienteId(){
        Long id = 2L;
        serviceImpl.findByClienteId(id);
        Mockito.verify(pedidoData).findByClienteId(Mockito.any());
    }


}
package br.com.viasoft.bootcamp.service.impl;

import br.com.viasoft.bootcamp.data.ProdutoData;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.data.domain.PageRequest;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(MockitoJUnitRunner.class)
public class ProdutoServiceImplTest {

    @Mock
    private ProdutoData data;

    @InjectMocks
    private ProdutoServiceImpl produtoImpl;

    @Test
    public void verificaBuscaProdutoPorDescricao(){
        produtoImpl.complete("teste");
        Mockito.verify(data).findByDescricaoContaining("teste", PageRequest.of(0, 20));
    }
}
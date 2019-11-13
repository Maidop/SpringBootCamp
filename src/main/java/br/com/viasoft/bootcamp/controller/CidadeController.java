package br.com.viasoft.bootcamp.controller;

import br.com.viasoft.bootcamp.framework.CrudRestController;
import br.com.viasoft.bootcamp.framework.CrudService;
import br.com.viasoft.bootcamp.model.Cidade;
import br.com.viasoft.bootcamp.service.CidadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("cidade")
public class CidadeController extends CrudRestController<Cidade, Long> {

    private final CidadeService cidadeService;

    public CidadeController(CidadeService cidadeService) {
        this.cidadeService = cidadeService;
    }

    @Override
    public CrudService<Cidade, Long> getService() {
        return cidadeService;
    }
}

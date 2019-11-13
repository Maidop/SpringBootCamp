package br.com.viasoft.bootcamp.service.impl;

import br.com.viasoft.bootcamp.data.CidadeData;
import br.com.viasoft.bootcamp.framework.CrudServiceImpl;
import br.com.viasoft.bootcamp.model.Cidade;
import br.com.viasoft.bootcamp.service.CidadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public class CidadeServiceImpl extends CrudServiceImpl<Cidade, Long> implements CidadeService {

    @Autowired private CidadeData cidadeData;

    @Override
    public JpaRepository<Cidade, Long> getRepository() {
        return cidadeData;
    }
}

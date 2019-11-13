package br.com.viasoft.bootcamp.data;

import br.com.viasoft.bootcamp.model.Cidade;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CidadeData extends JpaRepository<Cidade, Long> {
}

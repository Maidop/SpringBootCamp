package br.com.viasoft.bootcamp.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "CIDADE")
public class Cidade {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CODIGO")
    private Long id;

    @Column(name = "NOME", nullable = false, length = 100)
    private String nome;

    @Column(name = "CODIGO_IBGE", nullable = false)
    private Integer codigoIbge;

    @Enumerated(EnumType.STRING)
    @Column(name = "Estado", nullable = false, length = 2)
    private UF uf;



}

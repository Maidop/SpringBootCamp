package br.com.viasoft.bootcamp.controller;

import br.com.viasoft.bootcamp.service.CidadeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("screen-cidade")
public class CidadeScreenControle {
    @Autowired
    private CidadeService cidadeService;

    @GetMapping
    public String findAll(Model model){
        model.addAttribute("cidadeList", cidadeService.findAll());
        return "cidades";
    }

    @GetMapping("idcidade")
    public String findById(
            @RequestParam("id") Long id
            ,Model model){
        model.addAttribute("cidade", cidadeService.findOne(id).get());
        return "cidade";
    }
}

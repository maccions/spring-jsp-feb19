package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CercaController {

    @Autowired
    PastoService pastoService;

    @Autowired
    Logger log;


    @GetMapping("/cerca")
    public String cerca(Model model, @RequestParam("testo") String strtxt){
        log.debug("/cerca");
        //System.out.println("ricerca con: " + strtxt);
        List<Pasto> ris = new ArrayList<>();
        ris = pastoService.cerca(strtxt);
        model.addAttribute("piatti", ris);
        return "cerca";
    }

}//end class

package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.dto.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
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


    @GetMapping("/cerca")
    public String cerca(Model model, @RequestParam("testo") String strtxt){
        //System.out.println("ricerca con: " + strtxt);
        List<Pasto> ris = new ArrayList<>();
        ris = pastoService.cerca(strtxt);
        model.addAttribute("piatti", ris);
        return "cerca";
    }

}//end class

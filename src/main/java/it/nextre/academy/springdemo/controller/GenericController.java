package it.nextre.academy.springdemo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class GenericController {

    @GetMapping({"/","/contatti","/about"})
    public String getHome(){
        return "pagina";
    }

    @GetMapping("/dati")
    public String getDati(Model model){
        //il model conterrà i dati da passare alla view
        //mille operazioni di ogni tipo
        String risultato = "Ciao Mario Rossi";
        model.addAttribute("ris",risultato);
        return "pagina";
    }



}//end class

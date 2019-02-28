package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.dto.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import it.nextre.academy.springdemo.service.TopDealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


@Controller
public class GenericController {

    @Autowired
    TopDealService topDealService;

    @Autowired
    PastoService pastoService;


    @GetMapping({"/","/index","/home"})
    public String getHome(Model model){

        Pasto colazione, pranzo, cena;
        colazione = topDealService.getTopBreakfast();
        pranzo = topDealService.getTopLunch();
        cena = topDealService.getTopDinner();

        model.addAttribute("colaz",colazione);
        model.addAttribute("pranzo",pranzo);
        model.addAttribute("cena",cena);

        return "homepage-1";
    }

    @GetMapping("/index2")
    public String getHome2(){
        return "homepage-2";
    }

    @GetMapping("/primo/dati")
    public String getDati(Model model, HttpServletRequest richiesta, @RequestParam(name="nome", required = false) String strnome){
        //il model conterrà i dati da passare alla view
        //mille operazioni di ogni tipo
        /*
        System.out.println(richiesta.getQueryString());
        System.out.println("Paramentro nome: " + strnome);
        */
        System.out.println("1 "+richiesta.getContextPath());
        System.out.println("2 "+richiesta.getPathInfo());
        System.out.println("3 "+richiesta.getRequestURI());
        System.out.println("4 "+richiesta.getServletPath());
        System.out.println("5 "+richiesta.getMethod());
        System.out.println("6 "+richiesta.getUserPrincipal());
        String risultato = "Ciao "+strnome;
        model.addAttribute("ris",risultato);
        return "pagina";
    }

    @GetMapping("/catalogo")
    public String cat(){
        return "pagina";
    }

    @GetMapping("/nuovo-piatto")
    public String getNuovoPiatto(){
        return "nuovoPiatto";
    }

    @PostMapping("/salva-piatto")
    public String salvaPiatto(@ModelAttribute("Pasto") Pasto p, BindingResult result, Model m){
        System.out.println("Salva-piatto : " + p);
        pastoService.salva(p);
        //m.addAttribute("piatti", pastoService.getAll());
        return "redirect:menu";
    }


    @GetMapping("/menu")
    public String salvaPiatto(Model m){
        m.addAttribute("piatti", pastoService.getAll());
        return "menu";
    }




}//end class

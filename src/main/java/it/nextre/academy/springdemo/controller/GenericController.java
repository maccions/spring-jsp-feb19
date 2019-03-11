package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import it.nextre.academy.springdemo.service.TopDealService;
import it.nextre.academy.springdemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;



@Controller
public class GenericController {

    @Autowired
    TopDealService topDealService;

    @Autowired
    PastoService pastoService;


    @GetMapping({"/","/index"})
    public String getHome(Model model){

        Pasto colazione, pranzo, cena;
        colazione = pastoService.getOneRandom();
        do{
            pranzo = pastoService.getOneRandom();
        }while(colazione.equals(pranzo));

        do{
            cena = pastoService.getOneRandom();
        }while(colazione.equals(cena) || pranzo.equals(cena));



        model.addAttribute("colaz",colazione);
        model.addAttribute("pranzo",pranzo);
        model.addAttribute("cena",cena);

        return "index";
    }

    @GetMapping("/menu")
    public String getMenu(Model m){
        m.addAttribute("piatti", pastoService.getAll());
        return "menu";
    }

    @GetMapping("/servizi")
    public String getServizi(){
        return "servizi";
    }

    @GetMapping("/contatti")
    public String getContatti(){
        return "contatti";
    }



    /*
    * DEMO PER UTENTE ADMIN
    * */
    @Autowired
    UserService userService;


    @GetMapping("/test")
    public String doTest(){
        userService.createAdmin();
        return "servizi";
    }







    /*
    @GetMapping("/primo/dati")
    public String getDati(Model model, HttpServletRequest richiesta, @RequestParam(name="nome", required = false) String strnome){
        //il model conterrà i dati da passare alla view
        //mille operazioni di ogni tipo

        System.out.println(richiesta.getQueryString());
        System.out.println("Paramentro nome: " + strnome);

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
    */













}//end class

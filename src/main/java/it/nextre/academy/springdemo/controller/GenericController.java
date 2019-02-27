package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.dto.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import it.nextre.academy.springdemo.service.TopDealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


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

    @GetMapping("/dati")
    public String getDati(Model model){
        //il model conterrà i dati da passare alla view
        //mille operazioni di ogni tipo
        String risultato = "Ciao Mario Rossi";
        model.addAttribute("ris",risultato);
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
        m.addAttribute("piatti", pastoService.getAll());
        return "menu";
    }

    @GetMapping("/menu")
    public String salvaPiatto(Model m){
        m.addAttribute("piatti", pastoService.getAll());
        return "menu";
    }



}//end class

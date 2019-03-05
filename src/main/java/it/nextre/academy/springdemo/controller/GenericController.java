package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import it.nextre.academy.springdemo.service.TopDealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class GenericController {

    @Autowired
    TopDealService topDealService;

    @Autowired
    PastoService pastoService;


    @GetMapping({"/","/index"})
    public String getHome(Model model){

        Pasto colazione, pranzo, cena;
        colazione = topDealService.getTopBreakfast();
        pranzo = topDealService.getTopLunch();
        cena = topDealService.getTopDinner();

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



    @GetMapping("/piatto")
    public String getPiatto(Model model, @RequestParam("id") Integer idPiatto){
        Pasto p = pastoService.getOne(idPiatto);
        if (p==null){
            //todo redirect 404
        }
        model.addAttribute("piatto",p);
        return "piatto";
    }

    @GetMapping("/piatto/{id}")
    public String getPiatto2(Model model, @PathVariable("id") Integer idPiatto){
        Pasto p = pastoService.getOne(idPiatto);
        if (p==null){
            //todo redirect 404
        }
        model.addAttribute("piatto",p);
        return "piatto";
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



    @GetMapping("/nuovo-piatto")
    public String getNuovoPiatto(){
        return "nuovoPiatto";
    }

    @PostMapping("/salva-piatto")
    public String salvaPiatto(@ModelAttribute("Pasto") Pasto p, @RequestParam(name="fimage", required = false) MultipartFile img , @RequestParam(required = false, name = "cancella") Boolean cancella, BindingResult result, Model m){

        System.out.println("Salva-piatto : " + p); //id null o number>0
        System.out.println("Salva-piatto Cancella: " + cancella); //null o true
        //if(true)return "redirect:menu";
        /*
        System.out.println("img size: " + img.getSize());
        System.out.println("img contentType: " + img.getContentType());
        System.out.println("img name: " + img.getName());
        System.out.println("img OriginalFileName: " + img.getOriginalFilename());
        */

        if (result.hasErrors()){
            //todo fare il ritorno alla pagina di inserimento con i dati inseriti dall'utente mostrando gli errori
            return "redirect:nuovo-piatto";
        }

        //se ho immagine
        if(img!=null && img.getSize()>0){
            //salvo il piatto(così da ottenere il nuovo ID x fare la cartella sull'HDD), se tutto va bene, salvo l'immagine e aggiorno il piatto
            p =  pastoService.salva(p);
            if (p!=null && p.getId()>0){
                //tutto è andato bene, quindi memorizzo l'immagine
                pastoService.aggiornaImmagine(p,img);
                //salvataggio fatto da metodo precedente
            }
        }else {
            //altrimenti salvo il piatto senza immagine
            pastoService.salva(p);
        }
        //m.addAttribute("piatti", pastoService.getAll()); // lo farà la rotta menu
        return "redirect:menu";
    }



    @GetMapping("/edit/piatto")
    public String getEditPiatto(@RequestParam("id") Integer id, Model model){
        if (id>0){
            Pasto tmp = pastoService.getOne(id);
            model.addAttribute("piatto",tmp);
            model.addAttribute("modifica", true);
            return "nuovoPiatto";
        }
        //todo page 404
        return "redirect:menu";
    }








}//end class

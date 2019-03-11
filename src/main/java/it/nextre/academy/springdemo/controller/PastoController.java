package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;

@Controller
public class PastoController {



    @Autowired
    PastoService pastoService;

    /*
     * esempio di passaggio parametri in get
     * */
    @GetMapping("/piatto")
    public String getPiatto(Model model, @RequestParam("id") Integer idPiatto){
        Pasto p = pastoService.getOne(idPiatto);
        if (p==null){
            //todo redirect 404
        }
        model.addAttribute("piatto",p);
        return "piatto";
    }

    /*
     * esempio precedente ma con passaggio parametri in percorso
     * */
    @GetMapping("/piatto/{id}")
    public String getPiatto2(Model model, @PathVariable("id") Integer idPiatto){
        Pasto p = pastoService.getOne(idPiatto);
        if (p==null){
            //todo redirect 404
        }
        model.addAttribute("piatto",p);
        return "piatto";
    }







    //todo security
    @GetMapping("/nuovo-piatto")
    public String getNuovoPiatto(Model model){
        model.addAttribute("piatto",new Pasto());
        return "nuovoPiatto";
    }


    //todo security
    @PostMapping("/salva-piatto")
    public String salvaPiatto(@Valid @ModelAttribute("piatto") Pasto p, BindingResult result, ModelMap model, @RequestParam(name="fimage", required = false) MultipartFile img , @RequestParam(required = false, name = "cancella") Boolean cancella, Model m){

        System.out.println("Salva-piatto : " + p); // nuovo piatto id null o number>0
        System.out.println("Salva-piatto Cancella: " + cancella); // null o true
        //if(true)return "redirect:menu";
        /*
        System.out.println("img size: " + img.getSize());
        System.out.println("img contentType: " + img.getContentType());
        System.out.println("img name: " + img.getName());
        System.out.println("img OriginalFileName: " + img.getOriginalFilename());
        */

        System.out.println(result);
        System.out.println(result.hasErrors());


        if (result.hasErrors()){
            if (p.getId()!=null) {
                model.addAttribute("modifica", true);
            }
            return "nuovoPiatto";
        }


        //aggiustare oggetto pasto con vecchio valore di img (non bindato automaticamente)
        if(p.getId() != null){
            p.setImage(pastoService.getOne(p.getId()).getImage());
        }

        //se sto modificando e voglio cancellare l'immagine
        if (p.getId() != null && cancella!=null && cancella==true){
            pastoService.aggiornaImmagine(p, null);
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
        return "redirect:/menu";
    }



    //todo security
    @GetMapping("/piatto/edit")
    public String getEditPiatto(@RequestParam("id") Integer id, Model model){
        if (id>0){
            Pasto tmp = pastoService.getOne(id);
            model.addAttribute("piatto",tmp);
            model.addAttribute("modifica", true);
            return "nuovoPiatto";
        }
        //todo page 404
        return "redirect:/menu";
    }



    //todo security
    @GetMapping("/piatto/delete")
    public String getCancellaPiatto(@RequestParam("id") Integer id){
        pastoService.cancellaPastoById(id);
        return "redirect:/menu";
    }



}//end class
package it.nextre.academy.springdemo.controller.api;

import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import it.nextre.academy.springdemo.service.TopDealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api")
public class MenuControllerAPI {

    @Autowired
    TopDealService topDealService; //era il fake

    @Autowired
    PastoService pastoService;    //quello reale col db

    @GetMapping("/menu-del-giorno")
    public List<Pasto> getMenuGiorno(){
        List<Pasto> menu = new ArrayList<>();
        menu.add(topDealService.getTopBreakfast());
        menu.add(topDealService.getTopLunch());
        menu.add(topDealService.getTopDinner());
        return menu;
    }

    @GetMapping("/menu")
    public List<Pasto> getAllMenu(){
        return pastoService.getAll();
    }

}//end class

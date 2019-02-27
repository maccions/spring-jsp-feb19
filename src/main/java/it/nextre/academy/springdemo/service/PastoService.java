package it.nextre.academy.springdemo.service;

import it.nextre.academy.springdemo.dto.Pasto;

import java.util.List;

public interface PastoService {

    List<Pasto> getAll();
    public boolean salva(Pasto pasto);

}//end class

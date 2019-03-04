package it.nextre.academy.springdemo.service;

import it.nextre.academy.springdemo.entity.Pasto;

import java.util.List;

public interface PastoService {

    List<Pasto> getAll();
    public boolean salva(Pasto pasto);
    Pasto getOne(Integer id);

    List<Pasto> cerca(String nome);
}//end class

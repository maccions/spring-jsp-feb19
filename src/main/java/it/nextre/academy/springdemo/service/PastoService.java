package it.nextre.academy.springdemo.service;

import it.nextre.academy.springdemo.entity.Pasto;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface PastoService {


    Long count();

    List<Pasto> getAll();
    public Pasto salva(Pasto pasto);
    Pasto getOne(Integer id);

    List<Pasto> cerca(String nome);

    Pasto aggiornaImmagine(Pasto pasto, MultipartFile immagine);

    void cancellaPastoById(Integer id);

    Pasto getOneRandom();
}//end class

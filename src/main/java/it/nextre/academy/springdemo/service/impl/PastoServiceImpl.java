package it.nextre.academy.springdemo.service.impl;

import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.repository.DealRepository;
import it.nextre.academy.springdemo.repository.PastoRepository;
import it.nextre.academy.springdemo.service.PastoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Stream;

@Service
public class PastoServiceImpl implements PastoService {

    @Autowired
    DealRepository dealRepository;

    @Autowired
    PastoRepository pastoRepository;

    @Autowired
    FileServiceImpl fileService;

    @Override
    public List<Pasto> getAll() {
        //return dealRepository.getPasti();
        return pastoRepository.findAll();
    }

    @Override
    public Pasto salva(Pasto pasto) {
        if (pasto==null)return null;
        if (pasto.getId()==null) {
            //inserisco
            if (pasto.getTitolo() != null && pasto.getTitolo().length() > 0) {
                //return dealRepository.salvaPasto(pasto);
                return pastoRepository.save(pasto);
                //return pasto.getId()!=null ? true : false;
            }
        }else{
            //modifica
            if (pasto.getId()>0 && dealRepository.getPasto(pasto.getId())!=null){
                //return dealRepository.aggiornaPasto(pasto);
                return pastoRepository.save(pasto);
                //return true;
            }
        }
        return null;
    }


    @Override
    public List<Pasto> cerca(String nome) {
        if (nome != null && nome.trim().length()>0){
            //return dealRepository.findByNome(nome);
            return pastoRepository.findAllByTitoloContaining(nome);
        }
        return null;
    }

    @Override
    public Pasto getOne(Integer id) {
        if (id !=null && id > 0){
            //return dealRepository.getPasto(id);
            return pastoRepository.findById(id).get();
        }
        return null;
    }



    /**
     * Aggiorna immagine controlla se presente una nuova immagine la aggiorna, se l'immagine passata sarà nulla procederà con la rimozione
     * */
    @Override
    public Pasto aggiornaImmagine(Pasto pasto, MultipartFile immagine) {
        if (pasto == null ) return null;
        if (immagine==null){
            //todo fare la rimozione
            //recupero le info presenti su db per questo pasto
            Pasto oldPasto = pastoRepository.getOne(pasto.getId());
            // cancellare immagine da HDD

            if(oldPasto.getImage()==null || oldPasto.getImage().length()==0)
                return null;

            Path toRemove = Paths.get("." ,"src","main","webapp","WEB-INF","static", oldPasto.getImage());
            System.out.println(toRemove);
            if(toRemove.toFile().exists()){
                System.out.println("File Immagine Trovato");
                //lo cancello
                if(!toRemove.toFile().delete()){
                    //lanciare eccezione
                    System.out.println("Errore cancellazione vecchia immagine");
                }
                //setto l'immagine del pasto a null e la memorizzo
                pasto.setImage(null);
                return pastoRepository.save(pasto);
            }
            return null;
            // aggiornare il record del pasto settando a null l'immagine e salvare
        }else{
            //procedere con la sostituzione sul disco del file e aggiornare l'oggetto Pasto su db
            if (fileService.isValidImage(immagine)){
                System.out.println("IMMAGINE VALIDA");
                Path toSave = Paths.get("." ,"src","main","webapp","WEB-INF","static","data","portata",""+pasto.getId());
                if (!toSave.toFile().exists()) {
                    if(!toSave.toFile().mkdirs()){
                        System.out.println("ERRORE CREAZIONE CARTELLA pasto ");
                    }
                }


                String filenameAnteprima = "piatto."+fileService.getFileExtension(new File(immagine.getOriginalFilename()));

                try(FileOutputStream fw = new FileOutputStream(toSave.toString()+File.separator+filenameAnteprima)){
                    fw.write(immagine.getBytes());
                    pasto.setImage(Paths.get("data","portata",""+pasto.getId(),filenameAnteprima).toString());
                    return pastoRepository.save(pasto);

                }catch (IOException e){
                    //todo fare qualcosa in caso di problemi
                }
            }else{
                System.out.println("IMMAGINE "+immagine.getOriginalFilename()+" NON VALIDA");
            }
        }
        return null;
    }
}//end class

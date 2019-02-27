package it.nextre.academy.springdemo.service.impl;

import it.nextre.academy.springdemo.dto.Pasto;
import it.nextre.academy.springdemo.repository.DealRepository;
import it.nextre.academy.springdemo.service.PastoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PastoServiceImpl implements PastoService {

    @Autowired
    DealRepository dealRepository;

    @Override
    public List<Pasto> getAll() {
        return dealRepository.getPasti();
    }

    @Override
    public boolean salva(Pasto pasto) {
        if (pasto==null)return false;
        if (pasto.getId()==null) {
            //inserisco
            if (pasto.getTitolo() != null && pasto.getTitolo().length() > 0) {
                return dealRepository.salvaPasto(pasto);
            }
        }else{
            //modifica
            if (pasto.getId()>0 && dealRepository.getPasto(pasto.getId())!=null){
                return dealRepository.aggiornaPasto(pasto);
            }
        }
        return false;
    }
}//end class

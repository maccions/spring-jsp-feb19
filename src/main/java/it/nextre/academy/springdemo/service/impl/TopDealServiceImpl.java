package it.nextre.academy.springdemo.service.impl;

import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.repository.DealRepository;
import it.nextre.academy.springdemo.service.TopDealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TopDealServiceImpl implements TopDealService {

    @Autowired
    DealRepository dealRepository;

    @Override
    public Pasto getTopBreakfast() {
        Pasto colazione = dealRepository.getTopBreakfast();
        return colazione;
    }

    @Override
    public Pasto getTopLunch() {
        return dealRepository.getTopLunch();
    }

    @Override
    public Pasto getTopDinner() {
        return dealRepository.getTopDinner();
    }
}//end class

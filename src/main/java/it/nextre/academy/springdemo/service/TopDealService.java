package it.nextre.academy.springdemo.service;

import it.nextre.academy.springdemo.entity.Pasto;

public interface TopDealService {
    Pasto getTopBreakfast();
    Pasto getTopLunch();
    Pasto getTopDinner();
}

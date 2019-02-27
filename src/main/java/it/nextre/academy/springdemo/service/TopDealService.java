package it.nextre.academy.springdemo.service;

import it.nextre.academy.springdemo.dto.Pasto;

public interface TopDealService {
    Pasto getTopBreakfast();
    Pasto getTopLunch();
    Pasto getTopDinner();
}

package it.nextre.academy.springdemo.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pasto {
    Integer id;
    String titolo;
    String descrizione;
    String image;
}//end class

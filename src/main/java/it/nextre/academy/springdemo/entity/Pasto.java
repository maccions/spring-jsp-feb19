package it.nextre.academy.springdemo.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="portata")
public class Pasto {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Integer id;
    String titolo;
    @Column(columnDefinition = "TEXT")
    String descrizione;
    String image;
}//end class

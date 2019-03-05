package it.nextre.academy.springdemo.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="portata")
public class Pasto {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Integer id;

    @NotEmpty
    String titolo;

    @Column(columnDefinition = "TEXT")
    String descrizione;


    String image;


    public String getImageURL(){
        if(this.image!=null)
        return this.image.replace("\\","/");
        return null;
    }
}//end class

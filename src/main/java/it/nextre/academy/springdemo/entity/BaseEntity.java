package it.nextre.academy.springdemo.entity;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;


@Getter
@EqualsAndHashCode
@ToString
@MappedSuperclass //permette di ereditare la struttura sulle entità figlie
public class BaseEntity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Integer id;

    public void setId(Integer id) {
        this.id = id;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "data_modifica", insertable = false)
    private Date dataModifica;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "data_creazione", updatable = false)
    private Date dataCreazione;

    @PrePersist
    void onCreate() {
        this.dataCreazione = new Timestamp((new Date()).getTime());
    }

    @PreUpdate
    void onPersist() {
        this.dataModifica = new Timestamp((new Date()).getTime());
    }




}//end class

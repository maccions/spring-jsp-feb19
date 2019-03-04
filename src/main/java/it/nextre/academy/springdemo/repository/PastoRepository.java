package it.nextre.academy.springdemo.repository;

import it.nextre.academy.springdemo.entity.Pasto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PastoRepository extends JpaRepository<Pasto, Integer> {

    List<Pasto> findAllByTitolo(String titolo);

}//end class

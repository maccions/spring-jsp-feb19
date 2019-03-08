package it.nextre.academy.springdemo.repository;

import it.nextre.academy.springdemo.entity.Pasto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PastoRepository extends JpaRepository<Pasto, Integer> {

    List<Pasto> findAllByTitolo(String titolo);
    List<Pasto> findAllByTitoloContaining(String titolo);

    @Query(nativeQuery=true, value="SELECT * FROM portata ORDER BY RAND() LIMIT 0,1")
    Pasto getOneRandom();

    /*
    @Override
    void deleteById(Integer integer);

    @Override
    void delete(Pasto pasto);
    */
}//end class

package it.nextre.academy.springdemo.repository;

import it.nextre.academy.springdemo.entity.Pasto;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Repository
public class DealRepository {

    List<Pasto> db = new ArrayList<>();
    {
        /*
        //commentate dal momento in cui ho implementato la base Entity
        db.add(new Pasto(1,"Colazione Italiana", "Cappuccino e Brioches al mattino sono la scelta ideale per iniziare con la marcia giust ala tua giornata.....","https://www.comunicaffe.it/wp-content/uploads/2017/03/Cappuccino_brioche-e1548838436532.jpg"));
        db.add(new Pasto(2,"Pranzo Emiliano", "Affettati, mozzarelle, formaggi, pasta fatta in casa, tutto quello che puoi degustare in romagna lo trovi solo da noi con la stessa qualità!","https://img1.spiiky.com/events/B/58624_0_68d74d56d050404f893df4979329cc0c.jpg.ashx?format=jpg&quality=80&scale=both&mode=crop&maxwidth=735&maxheight=427&crop=(0,38,550,357)&bgcolor=F6F6F6"));
        db.add(new Pasto(3,"Cena smilza","Brodino di gallina e ravioli fatti in casa","https://www.fileni.it/contrib/uploads/2108_z_tortellini.jpg"));

        db.add(new Pasto(4,"Pizza","Pizza alta o bassa, farcita o margherita, tradizionale o al gamut, scegli la pizza giusta per te. ","http://1.citynews-pisatoday.stgy.ovh/~media/original-hi/43579717813418/bufalina-al-solito-posto-2.jpg"));
*/
    }

    public Pasto getTopBreakfast(){
        //chiedere al db...
        return db.get(0);
    }

    public Pasto getTopLunch() {
        return db.get(1);
    }

    public Pasto getTopDinner() {
        return db.get(2);
    }

    public List<Pasto> getPasti() {
        return db;
    }

    public boolean salvaPasto(Pasto pasto) {
        Integer maxID = db.stream()
                .mapToInt(p->p.getId())
                .max().getAsInt();
        pasto.setId(++maxID);
        System.out.println(pasto);
        return db.add(pasto);
    }

    public Pasto getPasto(Integer id) {
        Optional<Pasto> tmp = db.stream()
                .filter(p->p.getId()==id)
                .findFirst();
        if(tmp.isPresent()){
            return tmp.get();
        }
        return null;
    }

    public boolean aggiornaPasto(Pasto pasto) {
        Pasto tmp = getPasto(pasto.getId());
        tmp.setTitolo(pasto.getTitolo());
        tmp.setDescrizione(pasto.getDescrizione());
        tmp.setImage(pasto.getImage());
        return true;
    }

    public List<Pasto> findByNome(String nome) {
        return db.stream()
                .filter(p->p.getTitolo().toLowerCase().contains(nome.trim().toLowerCase()))
                .collect(Collectors.toList());
    }
}//end class

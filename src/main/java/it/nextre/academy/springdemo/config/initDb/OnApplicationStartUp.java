package it.nextre.academy.springdemo.config.initDb;

import it.nextre.academy.springdemo.repository.PastoRepository;
import it.nextre.academy.springdemo.repository.UserRepository;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import java.nio.file.Paths;



@Component
public class OnApplicationStartUp {

    @Autowired
    private PastoRepository pastoRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    SqlUtil sqlUtil;

    @Value("${spring.profiles.active}")
    String profilo;

    @Autowired
    Logger logger;

    @EventListener
    public void onApplicationEvent(ContextRefreshedEvent event) {

        logger.debug("Application Event: ContextRefreshedEvent");
        logger.debug("Profilo: " + profilo);

        if (!profilo.equals("dev")) return;

        //per demo progetto vuoto
        if (pastoRepository.findAll().size() <=0 ) {
            sqlUtil.runSqlFile(Paths.get(".","src","main","resources","InitData.sql").toString());
        }

        //per demo progetto vuoto
        // user admin@nextre.it
        // pwd  admin
        if (userRepository.findAll().size() <=0 ) {
            sqlUtil.runSqlFile(Paths.get(".","src","main","resources","InitUsers.sql").toString());
        }



    }

}

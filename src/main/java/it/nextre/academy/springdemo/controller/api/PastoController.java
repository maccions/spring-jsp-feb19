package it.nextre.academy.springdemo.controller.api;

import it.nextre.academy.springdemo.entity.Pasto;
import it.nextre.academy.springdemo.service.PastoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/api/pasto")
public class PastoController {

    @Autowired
    PastoService pastoService;

    //@RequestMapping(path="/", method = RequestMethod.GET);
    @GetMapping("/")
    public List<Pasto> getAll() {
        return pastoService.getAll();
    }

    @PostMapping("/")
    public boolean addPasto(@RequestBody Pasto p) {
        return pastoService.salva(p)!=null;
    }

    @PutMapping("/{valId}")
    public boolean editPasto(@RequestBody Pasto p, @PathVariable("valId") Integer id) {
        if (p.getId()==id)
        return pastoService.salva(p)!=null;
        return false;
    }

}//end class

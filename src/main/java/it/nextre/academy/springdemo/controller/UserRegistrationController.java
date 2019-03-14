package it.nextre.academy.springdemo.controller;


import it.nextre.academy.springdemo.dto.UserRegistrationDto;
import it.nextre.academy.springdemo.entity.User;
import it.nextre.academy.springdemo.service.UserService;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

/**
 * Controller per la gestione della registrazione di un nuovo utente
 * */

@Controller
@RequestMapping("/registration")
public class UserRegistrationController {

    @Autowired
    private UserService userService;

    @Autowired
    Logger log;


    @ModelAttribute("user")
    public UserRegistrationDto userRegistrationDto() {
        return new UserRegistrationDto();
    }

    @GetMapping
    public String showRegistrationForm(Model model) {
        return "registration";
    }

    @PostMapping
    public String registerUserAccount(@ModelAttribute("user") @Valid UserRegistrationDto userDto, BindingResult result) {
        log.debug("/login [POST]" + userDto.toString());
        if (!userDto.getPassword().equals(userDto.getConfirmPassword())){
            log.error("Errore durante la registrazione: le password non coincidono");
            result.reject("password","Le password non coincidono");
        }

        User existing = userService.findByEmail(userDto.getEmail());
        if (existing != null) {
            log.error("Errore durante la registrazione: email già presente");
            result.rejectValue("email", null, "Questo indirizzo email è già prsente nel sistema");
        }

        if (result.hasErrors()) {
            return "registration";
        }

        User tmp = userService.save(userDto);
        if (tmp!=null)
        log.info("Utente registrato correttamente");

        return "redirect:/login?success";
    }


}//end class

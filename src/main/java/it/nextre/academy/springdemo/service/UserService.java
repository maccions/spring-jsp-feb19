package it.nextre.academy.springdemo.service;

import it.nextre.academy.springdemo.dto.UserRegistrationDto;
import it.nextre.academy.springdemo.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    User findByEmail(String email);
    User createAdmin();

    User save(UserRegistrationDto registration);
}

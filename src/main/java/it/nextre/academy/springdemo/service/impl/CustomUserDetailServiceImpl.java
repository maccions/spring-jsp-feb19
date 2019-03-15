package it.nextre.academy.springdemo.service.impl;

import it.nextre.academy.springdemo.config.CustomUserDetails;
import it.nextre.academy.springdemo.entity.User;
import it.nextre.academy.springdemo.repository.UserRepository;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;


@Service
public class CustomUserDetailServiceImpl implements UserDetailsService {

    @Autowired
    Logger log;

    @Autowired
    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.debug("Calling loadUserByUsername method with username: " + username);

        User tmp = userRepository.findByEmail(username);
        System.out.println("####"+tmp);
        System.out.println("####"+new CustomUserDetails(tmp));

        return new CustomUserDetails(tmp);
    }
}//end class

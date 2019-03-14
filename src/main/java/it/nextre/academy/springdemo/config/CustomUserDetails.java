package it.nextre.academy.springdemo.config;

import it.nextre.academy.springdemo.entity.User;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.stream.Collectors;

public class CustomUserDetails extends User implements UserDetails {

    //private User ut;

    public CustomUserDetails(User ut){
        super(ut.getFirstName(),ut.getLastName(),ut.getEmail(),ut.getPassword(),ut.getRoles());
    }



    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return AuthorityUtils.commaSeparatedStringToAuthorityList(getRoles().stream().map(r->r.toString()).collect(Collectors.joining( "," )));
    }

    @Override
    public String getPassword() {
        return super.getPassword();
    }

    @Override
    public String getUsername() {
        return super.getEmail();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }


}//end class

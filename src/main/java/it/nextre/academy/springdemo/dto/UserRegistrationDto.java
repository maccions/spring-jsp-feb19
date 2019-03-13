package it.nextre.academy.springdemo.dto;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

public class UserRegistrationDto {

    @NotEmpty(message = "Valore non valido")
    private String firstName;

    @NotEmpty(message = "Valore non valido")
    private String lastName;

    @NotEmpty(message = "Valore non valido")
    private String password;

    @NotEmpty(message = "Valore non valido")
    private String confirmPassword;

    @Email(message = "Formato non valido")
    @NotEmpty(message = "Valore non valido")
    private String email;

    @AssertTrue(message = "Consenso obbligatorio per continuare")
    private Boolean terms;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getTerms() {
        return terms;
    }

    public void setTerms(Boolean terms) {
        this.terms = terms;
    }

    @Override
    public String toString() {
        return "UserRegistrationDto{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", password='" + password.length() + '\'' +
                ", confirmPassword='" + confirmPassword.length() + '\'' +
                ", email='" + email + '\'' +
                ", terms=" + terms +
                '}';
    }
}//end class

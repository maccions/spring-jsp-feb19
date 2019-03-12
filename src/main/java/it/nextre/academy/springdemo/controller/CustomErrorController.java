package it.nextre.academy.springdemo.controller;


import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

@Controller
public class CustomErrorController implements ErrorController {
    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
        String msg = "Errore generale";
        model.addAttribute("messagge",msg );


        if (status != null) {
            Integer statusCode = Integer.valueOf(status.toString());
            /*
            // v1
            switch (statusCode){
                case 404:return "error-404";
                case 500:return "error-500";
            }
            */

            /*
            // v2
            if(statusCode == HttpStatus.NOT_FOUND.value()) {
                return "error-404";
            }
            else if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
                return "error-500";
            }
            */

            /*
            //v3
            return ""+statusCode;
            * */


            //v4

            HttpStatus code = HttpStatus.valueOf(statusCode);
            msg=code.getReasonPhrase();
            model.addAttribute("statusCode", statusCode);
            model.addAttribute("messagge",msg );
            return "error";
        }
        return "error";
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}//end class

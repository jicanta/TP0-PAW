package ar.edu.itba.paw.webapp.controller;

import ar.edu.itba.paw.interfaces.UserService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

@Controller
public class HelloWorldController {

    private UserService us;

    public HelloWorldController(@Qualifier("dummyUserService") final UserService us) {
        this.us = us;
    }

    @RequestMapping("/")
    public ModelAndView helloWorld() {
        final ModelAndView mav = new ModelAndView("index");
        mav.addObject("name", us.findById(1).get());
        mav.addObject("itemName", "Lavarropas");
        mav.addObject("itemPrice", 500000);
        mav.addObject("itemDate","18/08/2025");
        mav.addObject("itemName2", "Heladera");
        mav.addObject("itemPrice2", 750000);
        mav.addObject("itemDate2","20/08/2025");
        return mav;
    }
}

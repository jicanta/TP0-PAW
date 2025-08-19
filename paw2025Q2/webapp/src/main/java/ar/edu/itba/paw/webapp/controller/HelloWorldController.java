package ar.edu.itba.paw.webapp.controller;

import ar.edu.itba.paw.interfaces.UserService;
import ar.edu.itba.paw.model.User;
import ar.edu.itba.paw.webapp.form.UserForm;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;

@Controller
public class HelloWorldController {

    private static final String LOGGED_USER_ID = "userId";
    private UserService us;

    public HelloWorldController(@Qualifier("dummyUserService") final UserService us) {
        this.us = us;
    }

//    @RequestMapping("/")
//    public ModelAndView helloWorld() {
//        final ModelAndView mav = new ModelAndView("index");
//        mav.addObject("name", us.findById(1).get());
//        mav.addObject("itemName", "Lavarropas");
//        mav.addObject("itemPrice", 500000);
//        mav.addObject("itemDate","18/08/2025");
//        mav.addObject("itemName2", "Heladera");
//        mav.addObject("itemPrice2", 750000);
//        mav.addObject("itemDate2","20/08/2025");
//        return mav;
//    }
    @RequestMapping("/")
    public ModelAndView index(@ModelAttribute("registerForm") final UserForm form) {
//        return new ModelAndView("index");
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
    @RequestMapping(value = "/create", method = { RequestMethod.POST })
    public ModelAndView create(@Valid @ModelAttribute("registerForm") final UserForm
                                       form, final BindingResult errors) {
        if (errors.hasErrors()) {
            return index(form);
        }
        final User u = us.create(form.getUsername(), form.getPassword());
        return new ModelAndView("redirect:/user?userId=" + u.getId());
    }
    @ModelAttribute("userId")
    public Integer loggedUser(final HttpSession session) {
        return (Integer) session.getAttribute(LOGGED_USER_ID);
    }
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView getUser(@RequestParam("userId") int userId) {
        final ModelAndView mav = new ModelAndView("users"); // JSP users.jsp
        mav.addObject("user", us.findById(userId).orElse(null));
        return mav;
    }
}

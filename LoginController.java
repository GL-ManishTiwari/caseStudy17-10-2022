package com.casestudy.mobilerecharge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.casestudy.mobilerecharge.service.*;

@RestController
public class LoginController {

    @Autowired
    private UserService service;

    @GetMapping(value = "/login")
    public ModelAndView showLoginPage() {
        return new ModelAndView("login");
    }

    @GetMapping(value = "/loginerror")
    public ModelAndView showErrorPage() {
        return new ModelAndView("error");
    }
}

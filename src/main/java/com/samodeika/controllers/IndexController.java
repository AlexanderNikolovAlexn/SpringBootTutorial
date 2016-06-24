package com.samodeika.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")
    String homepage(Model model) {
        System.out.println("Index controller. Homepage!");
        model.addAttribute("homepage", "Spring Boot Tutorial");
        return "index";
    }

}

package com.samodeika.controllers;

import com.samodeika.entities.TimeWithTimezone;
import com.samodeika.utils.TimeUtils;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Controller
public class IndexController {

    @RequestMapping("/")
    String homepage(Model model) {
        System.out.println("Index controller. Homepage!");
        model.addAttribute("homepage", "Spring Boot Tutorial");
        model.addAttribute("timeWithTimezone", new TimeWithTimezone(TimeUtils.getTime(), TimeUtils.getTimezone()));
        return "index";
    }

    @RequestMapping(value="/getTime", method= RequestMethod.GET, produces = "application/json")
    public @ResponseBody TimeWithTimezone getTime() {
        TimeWithTimezone timeWithTimezone = new TimeWithTimezone(TimeUtils.getTime(), TimeUtils.getTimezone());
        return timeWithTimezone;
    }

}

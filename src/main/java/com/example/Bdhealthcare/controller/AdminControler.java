package com.example.Bdhealthcare.controller;

import com.example.Bdhealthcare.model.Product;
import com.example.Bdhealthcare.services.Productservice;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminControler {

    private final Productservice productservice;

    public AdminControler(Productservice productservice) {
        this.productservice = productservice;
    }

    @GetMapping("/adminproduct")
    public String contract (@ModelAttribute Product product, HttpServletRequest request) {


        request.setAttribute("students", productservice.showmyStudents());

        return "UserProduct";
    }

    @GetMapping("/about")
    public String about () {

        return "about";
    }

    @GetMapping("/contact")
    public String Contact () {

        return "contact";
    }

}





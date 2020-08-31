package com.example.Bdhealthcare.controller;

import com.example.Bdhealthcare.model.Product;
import com.example.Bdhealthcare.model.User;
import com.example.Bdhealthcare.services.Productservice;
import com.example.Bdhealthcare.services.Userservice;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
@AllArgsConstructor
@Controller
public class UserController {

    private final Userservice userservice;

    private final Productservice productservice;

    @PostMapping("/user_registation1")
    public String userSignup(@ModelAttribute User userRequest) {
        userservice.createUser(userRequest);
        return "log";
    }


    @RequestMapping ("/home2")
    public String home2(){

        return "registration1";
    }


    @RequestMapping ("/home1")
    public String home1(){

        return "log";
    }



    @RequestMapping("/")
    public String welcome() {
        return "welcome1";
    }



    @RequestMapping("/createaccount")
    public String registation() {
        return "Registration";}


    @RequestMapping("/logined")
    public String Login() {
        return "Login";
    }



    @RequestMapping("/login_page1")
    public String loginUser(@ModelAttribute User user, HttpServletRequest request) {
        if(userservice.findByUsernameAndPassword(user.getName1(), user.getPassword())!=null) {
            request.setAttribute("students", productservice.showmyStudents());
            return "ViewProduct";
        }
        else {
            request.setAttribute("error", "Invalid Username or Password");
            return "g";

        }

    }
    @RequestMapping("/edit-users")
    public String ff(){
        return "UpdateProduct";
    }
}

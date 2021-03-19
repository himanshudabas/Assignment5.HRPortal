package com.nagarro.training.assignement5.controllers;

import com.nagarro.training.assignement5.models.HumanResources;
import com.nagarro.training.assignement5.service.HrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Collections;

@Controller
public class HrController {
    @Autowired
    private HrService hrService;


    @GetMapping({"/login", "/"})
    public String getLogin() {
        System.out.println("[SearchAuthInterceptor] -> getLogin");
        return "login";
    }

    @PostMapping("/login")
    public String postLogin(HumanResources hr, Model model, HttpSession session){
        System.out.println("[SearchAuthInterceptor] -> postLogin");
    	if (this.hrService.validateCredentials(hr)) {
            // successful login
            session.setAttribute("username", hr.getUsername());
            return "redirect:/portal";
        } else {
            model.addAttribute("loginMsg", "Please enter correct login credentials!");
            return "login";
        }
    }

    @GetMapping("/portal")
    public String getPortal(Model model, HttpSession session){
        System.out.println("[SearchAuthInterceptor] -> getPortal");
    	String username = (String) session.getAttribute("username");
    	model.addAttribute("username", username);
    	return "portal";
    }
    
    @GetMapping("/edit/{id}")
    public String getEdit(@PathVariable Long id) {
        System.out.println("[SearchAuthInterceptor] -> getEdit");
    	return "edit";
    }

    @GetMapping("/logout")
    public @ResponseBody String logout(HttpSession session){
        System.out.println("[SearchAuthInterceptor] -> logout");
        session.invalidate();
        return "success";
    }

}

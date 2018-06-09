package edu.mum.coffee.controller;

import edu.mum.coffee.domain.*;
import edu.mum.coffee.service.OrderService;
import edu.mum.coffee.service.PersonService;
import edu.mum.coffee.service.ProductService;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController {

    @Autowired
    PersonService personService;

    @Autowired
    private ProductService productService;

    @PostMapping(path = "/user")
    public String createUser(@Valid Person person, Model model, BindingResult bindingResult) {
        Person personRepo = personService.savePerson(person);
        model.addAttribute("response", "User Added successfully");
        model.addAttribute("person", new Person());
        return "home";
    }

    @GetMapping(path = "/user")
    public String getUser(Model model) {
        Person person = new Person();
        Address address = new Address();
        person.setAddress(address);
        model.addAttribute("person", person);
        return "registration";
    }
}

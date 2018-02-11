package com.kh013j.controllers;

import com.kh013j.controllers.util.ViewName;
import com.kh013j.model.domain.Category;
import com.kh013j.model.service.interfaces.CategoryService;
import com.kh013j.model.service.interfaces.DishService;
import com.kh013j.model.service.interfaces.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
@SessionAttributes("categoryItems")
public class HelloController {
    @Autowired
    DishService dishService;
    @Autowired
    OrderService orderService;
    @Autowired
    CategoryService categoryService;

    @ModelAttribute("categoryItems")
    public List<Category> getOrderMap() {
        return categoryService.findAll();
    }

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String sayHello(){
        return "Hello";
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(){
        return "Welcome";
    }

    @RequestMapping(value = "/layoutgrid", method = RequestMethod.GET)
    public ModelAndView layoutgrid(){
        return new ModelAndView(ViewName.MENU, "menuItems",
            dishService.findAll());
    }

    @RequestMapping(value = "/dishdescription/{id}", method = RequestMethod.GET)
    public String dishdescription(Model model, @PathVariable(value="id") long id){
        model.addAttribute("dish", dishService.findById(id));
        return ViewName.DISH_DESCRIPTION;
    }



}

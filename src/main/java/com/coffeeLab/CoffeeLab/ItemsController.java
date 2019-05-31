package com.coffeeLab.CoffeeLab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemsController {
	
	@Autowired
	ItemsRepository i;
	
	@RequestMapping ("/")
	public ModelAndView displayHome() {
		return new ModelAndView("index", "listOfStuff", i.findAll());
	}
	
	
	
	
	
}

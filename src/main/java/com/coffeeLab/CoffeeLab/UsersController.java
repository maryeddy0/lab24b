package com.coffeeLab.CoffeeLab;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersController {

	@Autowired
	UsersRepository u;


	@RequestMapping("/register")
	public ModelAndView newUser() {
		return new ModelAndView("registration");
	}

	@RequestMapping("/user-display")
	public ModelAndView displayHome() {
		return new ModelAndView("redirect:registration", "userInfo", u.findAll());
	}

	@RequestMapping("add-person")
	public ModelAndView addNewPerson(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("phone") String phone) {
		u.save(new Users(name, email, phone));
		return new ModelAndView("redirect:registration");
	}
}

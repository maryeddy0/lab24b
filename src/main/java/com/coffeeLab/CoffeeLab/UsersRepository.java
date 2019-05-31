package com.coffeeLab.CoffeeLab;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository <Users, Integer>{

	Users findByName(String name);
	
	
	
	
	
	
	
	
	
	
}

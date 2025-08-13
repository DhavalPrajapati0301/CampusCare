package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;


@Controller
public class SessionController {
	
	@Autowired
	JdbcTemplate stmt;
	
	@GetMapping("signup")
	public String signup() {
		return "Signup";
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserBean bean , Model model) {
		
		String sql  = "INSERT INTO users (firstName,lastName,email,password,role) VALUES (?,?,?,?,?)";
		
		stmt.update(sql,
				bean.getFirstName(),
				bean.getLastName(),
				bean.getEmail(),
				bean.getPassword(),
				bean.getRole());
				
				model.addAttribute("bean",bean);
				
		return "Login";
	}
	
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
}

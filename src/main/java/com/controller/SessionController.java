package com.controller;

import java.security.KeyStore.PasswordProtection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserBean;

import jakarta.servlet.http.HttpSession;


@Controller
public class SessionController {
	
	@Autowired
	JdbcTemplate stmt;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@GetMapping("signup")
	public String signup() {
		return "Signup";
	}
	
	@GetMapping("adminhome")
	public String adminHome()
	{
		return "AdminHome";
		
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserBean bean , Model model) {
		
		String epwd  = passwordEncoder.encode(bean.getPassword());
		bean.setPassword(epwd);
		
		String sql  = "INSERT INTO users (firstName,lastName,email,password,role) VALUES (?,?,?,?,'admin')";

		stmt.update(sql,
				bean.getFirstName(),
				bean.getLastName(),
				bean.getEmail(),
				bean.getPassword());
				
				model.addAttribute("bean",bean);
				
		return "Login";
	}
	
	@GetMapping("login")
	public String login(HttpSession session,Integer userId,String email, String password,Model model) {

		        return "Login";
		    
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email, String password, HttpSession session, Model model) {
	    try {
	        UserBean userBean = stmt.queryForObject(
	                "SELECT * FROM users WHERE email = ?",
	                new BeanPropertyRowMapper<>(UserBean.class),
	                email);

	         if (passwordEncoder.matches(password, userBean.getPassword())) {
	            
	            session.setAttribute("user", userBean);

	            if ("admin".equalsIgnoreCase(userBean.getRole())) {
	                return "AdminHome"; 
	            } else {
	                return "StudentHome"; 
	            }
	        } else {
	            model.addAttribute("error", "Invalid Password");
	            return "Login";
	        }
	    } catch (Exception e) {
	        model.addAttribute("error", "Invalid Email or Password");
	        return "Login";
	    }
	}

	
}

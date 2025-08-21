package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.ComplaintBean;
import com.bean.UserBean;

@Controller
public class StudentComplaintController {	
	
	@Autowired
	JdbcTemplate stmt;
	
	@GetMapping("newcom")
	public String NewCom(Model model) {
	    // Fetch from USERS table, not complaints
	    List<UserBean> users = stmt.query(
	        "SELECT userId, firstName FROM users", 
	        new BeanPropertyRowMapper<>(UserBean.class)
	    );

	    model.addAttribute("userList", users);
	    return "NewComplaint";
	}

	
	@PostMapping("savecomp")
	public String saveComplaint(ComplaintBean bean, Model model) {
	    String sql = "INSERT INTO complaints (title, category, priority, status, assignto, resolutionNotes) "
	               + "VALUES (?, ?, ?, ?, ?, ?)";

	    stmt.update(sql,
	            bean.getTitle(),
	            bean.getCategory(),
	            bean.getPriority(),
	            bean.getStatus(),
	            bean.getAssignto(),
	            bean.getResolutionNotes()
	    );

	    model.addAttribute("msg", "Complaint submitted successfully!");
	    return "NewComplaint";
	}

	@GetMapping("listcom")
	public String listCom(Model model)
	{
		
		List<UserBean> comp = stmt.query("select * from complaints", new BeanPropertyRowMapper(UserBean.class));
		model.addAttribute("comp",comp);
		return "ListComplaint";
	}
}
	

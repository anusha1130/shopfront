package com.niit.Backend.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Backend.dao.CategoryDAO;
import com.niit.Backend.dao.ProductDAO;



@Controller
public class DynamicNavbar {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/")
	public String dynamicNav(HttpSession session)
	{
		
		
		session.setAttribute("categoryList",categoryDAO.list());
		session.setAttribute("productList",productDAO.list());
		return "index";
	}
	@RequestMapping("/index1")
	public String Home(Model mv) {
		mv.addAttribute("categoryList", categoryDAO.list());
		mv.addAttribute("productList", productDAO.list());
		return "index";
	}
}

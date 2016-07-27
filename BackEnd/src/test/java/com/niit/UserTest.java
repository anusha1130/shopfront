package com.niit;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDAO;
import com.niit.models.User;

public class UserTest {

public static void main(String[] args) 
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		UserDAO userDAO = (UserDAO) context.getBean("userDAO");
		User user = (User) context.getBean("user");
		user.setId("TAB_003");
		user.setName("nere");
		user.setPassword("12345");
		user.setMobile("89898989");
		user.setMail("anu@g.com");
		user.setAddress("madinaguda");
		userDAO.saveOrUpdate(user);
		
		userDAO.delete("CAT_1");
		userDAO.get("CAT_3535");
	
		List<User>  list =    userDAO.list();
		
		for(User usr : list)
		{
			System.out.println(usr.getId()  + ":" +  usr.getName()  + ":"+  usr.getPassword() + ":"+  usr.getMobile() + ":"+  usr.getMail() + ":"+  usr.getAddress());
		}
			
			
		context.close();
		
	}
}

package com.niit.shoppingcart;

public class LoginDAO
{
	public boolean isValidUser(String uname,String pwd)
	{
	if(	uname.equals(pwd))
	
	
		{
			return true;
		}
		else
		{
			 return false;
		}
	}

}

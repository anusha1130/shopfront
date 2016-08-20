<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
</head>
<body>
<form method="post" action="signup1">
<center>

         
         
         <h1 style="color:blue"> welcome to registration!</h1>
          
          
          
          
       <div class="top-row">
             <div class="field-wrap">
              <label>First Name<span class="req">*</span></label>
              <input type="text" required autocomplete="off" />
             </div><br>
        
              <div class="field-wrap">
               <label>Last Name<span class="req">*</span></label>
               <input type="text"required autocomplete="off"/>
              </div><br>
       </div>

          <div class="field-wrap">
            <label>Email Address<span class="req">*</span></label>
            <input type="email"required autocomplete="off"/>
          </div><br>
          
          <div class="field-wrap">
            <label>Set Password<span class="req">*</span></label>
             <input type="password"required autocomplete="off"/>
          </div> <br>
          
           <div class="field-wrap">
            <label> confirm Password<span class="req">*</span> </label>
            <input type="password"required autocomplete="off"/>
      </div>
           <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button type="submit" class="button button-block"/>Get Started</button>
</center>    

</body>
</html>
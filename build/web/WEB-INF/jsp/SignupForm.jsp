<%-- 
    Document   : SignupForm
    Created on : Feb 16, 2016, 3:05:13 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Form</title>
    </head>
    <body>
        <h3><a href= "Events?action=list"> back to events </a>    </h3>
        <h3>Signup Form</h3>
        <form id="createUserForm" method="POST" action="Events">
            <input type="hidden" name="action" value="createUser"/>
            <span class="label">Your Name</span><br/>
            <input type="text" name="name" placeholder="Your Name" required="true"/><br/><br/>
            <span class="label">email</span><br/>
            <input type="email" name="email" placeholder="Email Id" required="true"/><br/><br/>
            <span class="label">Password</span><br/>
            <input type="password" name="password" id="password" placeholder="Password" 
                   required="true" pattern=".{6,}" title="length must be six or more"/><br/><br/>
            <span class="label">Confirm Password</span><br/>
            <input type="password" name="confirmPassword" id="confirmPassword" 
                   placeholder="Confirm Password" required="true"/><br/><br/>
            
            <input type="submit" id="submitBtn" value="Submit"/>
        </form>
        
        <script src="public/jquery-2.0.3.min.js"></script>
        <script src="public/SignupForm.js"></script>
    </body>
</html>

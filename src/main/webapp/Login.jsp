<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Webpage</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="main">
            <h1 class="main-title">Welcome to Bla Bla Univeristy</h1>
        </div>
        <div class="right">
            <nav>
                <ul>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="services">Services</a></li>
                    <li><a href="contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="login">
        <label for="username">User ID</label>
        <input type="text" id="username" placeholder="User ID"><br/><br/><br/>
        <label for="password">Password</label>
        <input type="password" id="password" placeholder="Password"><br/><br/><br/>
        <button class= "log" >Login</button>
    </div>
    <footer>
        <p>Don't you have account?</p>
        <a href="SignUp.jsp">Sign Up</a>
        <p>&copy; December 2024</p>
    </footer>
</body>
</html>


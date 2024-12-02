<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2 class="main">Registration Page</h2>
    <h3 class="main">Fill out the following informatiom correctly</h1>
    <div class="login">
    	<form action="SignupHandeler" method"get">
	        <label for="userid">Student id</label>
	        <input type="text"  id="userid" placeholder="ID" name="userid"> <br />
	        <label for="userfname">First Name</label>
	        <input type="text" id="userfname" placeholder="First Name" name="username"><br />
	        <label for="userlname">Last Name</label>
	        <input type="text" placeholder="Last Name" name="userlname"> <br />
	        <Label>Email Address</Label>
	        <input type="email" placeholder="Email address" name="useremail"> <br />
	        <label for="password">Password</label>
	        <input type="password" id="password" placeholder="Password" name="password"><br>
	        <label for="check">Agree to terms</label>
	        <input type="checkbox" id="check"/> 
	        <button  id="pop" class="log">Register</button>
	        <div class="modal" id="mymodal">
		        <div class="modal-contetnt">
			        <span class="close">%times;</span>
			        <p>Registration Comelete </p>
		        </div>
	        </div>
        </form>
    </div>
    <footer>
        <p>I have account</p>
        <a href="Login.jsp">Login Page</a>
        <p>&copy; December 2024</p>
    </footer>
    <script >
	    var modal = document.getElementById("mymodal");
	    var btn = document.getElementById("pop");
	    var span = document.getElementById("close")[0];
	    btm.onclick= function(){
	    	modal.style.display = "block";
	    }
	    span.onclick=function{
	    	modal.style.display ="none";
	    }
	    window.onclick=function(Event){
	    	if (Event.target==modal){
	    		modal.style.display ="none";
	    	}
	    }
    </script>
</body>
</html>
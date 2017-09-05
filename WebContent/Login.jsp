<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" />
    <link href="assets/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/ripple.min.css" type='text/css'>
    <link href="assets/css/custom.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    
    <script type="text/javascript" src="Scripts/jquery-1.12.0.js"></script>
    
    
<script>
function onLoadConditions(){
  	document.getElementById("alertUserName").style.display = 'none';
  	document.getElementById("alertPassword").style.display = 'none';    	
}

function HelloAlert(){
	alertify.logPosition("bottom right");
	alertify.alert("Successfully Logged In.!");
}

function submitLogin()
{
	var userName=document.getElementById("UserName").value.trim();
	var passWord=document.getElementById("User_pwd").value.trim();	

	if(userName.length == 0 && passWord.length ==0){
		document.getElementById("alertUserName").style.display = 'block';
		document.getElementById("alertPassword").style.display = 'block';
		return false;
	}
	else if(userName.length == 0)
		{		
			document.getElementById("alertUserName").style.display = 'block';
		    return false;
		}
	else if(passWord.length ==0)
	{
		document.getElementById("alertPassword").style.display = 'block';
	   return false;
	}
	document.getElementById("myform").submit();
}

function logincredenChange(type){
	
	if(type == 'uname'){		
		if(document.getElementById("UserName").value.length > 0){			
			document.getElementById("alertUserName").style.display = 'none';		  	
		}
		else {			
			document.getElementById("alertUserName").style.display = 'block';		  	
		}
		
	}
	else if(type == 'pwd'){
		
		if(document.getElementById("User_pwd").value.length > 0){			
			document.getElementById("alertPassword").style.display = 'none';		  	
		}
		else{			
			document.getElementById("alertPassword").style.display = 'block';		  	
		}
	}	
}
</script>
</head>
<body onload = "onLoadConditions()">
<div class="login-page fade-in" style="background-color: #689a9c;">
        <div class="login-form">
            <a href="#">
                <img src="Images/FinalLogo.png" alt="logo" style="height: 100px;width: 200px;">
            </a>
            <h2>Sign In</h2>
            <form action="/BillPortal_V2/LoginControl" id="myform" method="POST">
                <div class="form-row">
                    <div class="form-inner-field input-field">
                        <input for="full_name" type="text" id="UserName" name="UserName" class="validate" 
                        onkeypress=logincredenChange('uname') onKeyUp = logincredenChange('uname')  autofocus autocomplete="off">
                        <label id="full_name">User	 Name</label>
                    </div>
                    <p class="form-error fade-in" id="alertUserName" style="margin-right: 148px;">*Please Enter UserName</p>
                </div>
                <div class="form-row">
                    <div class="form-inner-field input-field">
                        <input type="password" id="User_pwd" name="User_pwd" class="validate"
                        onkeypress=logincredenChange("pwd") onKeyUp = logincredenChange("pwd") autocomplete="off">
                        <label>Password</label>
                    </div>
                    <p class="form-error fade-in" id="alertPassword" style="margin-right: 148px;">*Please Enter Password</p>
                </div>
                <button type="button" onclick="submitLogin();"  class="red-button w-100 h-50 mb-5 text-uppercase">Login</button>
                <a href="NewPasswordChangejsp.jsp" class="fR gray font-samll">Forgot your password?</a>
            </form>
        </div>
    </div>
    
    <%
if((String)request.getAttribute("status")=="success")
{
	%>
	<script>
	//window.open("NewPasswordChangejsp.jsp","_self");
    window.open("/BillPortal_V2/Billhandler?Event=NEWBILL","_parent");
    </script>
    <%
}
    %>

<script src="assets/js/libs/jquery-3.1.1.min.js"></script>
<script src="assets/js/libs/ripple.min.js"></script>
<script src="assets/js/libs/materialize.min.js"></script> 
</body>
</html>
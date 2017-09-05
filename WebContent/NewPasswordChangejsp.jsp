<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    <link rel="stylesheet" type="text/css" href="Screen_Style.css">
    
    <script type="text/javascript" src="Scripts/jquery-1.12.0.js"></script>
    
</head>
<body style="background-image:url(Images/ForgotPasswordIcon.jpg); background-repeat: no-repeat; background-size: 1365px 639px; ">

<div class="forgotPassword-form">
            <a href="#">
                <img src="Images/Logo.jpg" alt="logo" style="height: 90px;width: 122px;">
            </a>
            <h2>Reset Your Password Here</h2>
            <form action="/BillPortal_V2/LoginControl" id="myform" method="POST">
                <div class="form-row">
                    <div class="form-inner-field input-field">
                        <input for="full_name" type="text" id="Hint" name="Hint" class="validate" 
                        autofocus autocomplete="off">
                        <label id="Hint">Enter The Hint</label>
                    </div>
                    <!-- <p class="form-error fade-in" id="alertUserName" style="margin-right: 148px;">*Please Enter UserName</p>-->
                </div>
                
                <div class="form-row">
                    <div class="form-inner-field input-field">
                        <input for="full_name" type="text" id="Password" name="Password" class="validate" 
                        autocomplete="off">
                        <label id="Password">Enter New Password</label>
                    </div>
                    <!-- <p class="form-error fade-in" id="alertUserName" style="margin-right: 148px;">*Please Enter UserName</p>-->
                </div>
                
                
                <div class="form-row">
                    <div class="form-inner-field input-field">
                        <input type="password" id="RePassword" name=""RePassword"" class="validate"
                        autocomplete="off">
                        <label>Re-Enter New Password</label>
                    </div>
                    <!-- <p class="form-error fade-in" id="alertPassword" style="margin-right: 148px;">*Please Enter Password</p>-->
                </div>
                <button type="button" onclick="submitLogin();"  class="red-button w-100 h-50 mb-5 text-uppercase">Reset Password</button>
            </form>
        </div>
        <script src="assets/js/libs/jquery-3.1.1.min.js"></script>
<script src="assets/js/libs/ripple.min.js"></script>
<script src="assets/js/libs/materialize.min.js"></script> 

</body>
</html>
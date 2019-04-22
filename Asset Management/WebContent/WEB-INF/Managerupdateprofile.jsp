<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body{
    
    background-image:url('https://imgur.com/QpJg8TI.jpg');
    background-size:cover;
    height 30%;
}
.navbar, .dropdown-menu{
background:#09ba32;
border: none;

}

.nav>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu>li>a, .dropdown-menu>li{
  border-bottom: 3px solid transparent;
}
.nav>li>a:focus, .nav>li>a:hover,.nav .open>a, .nav .open>a:focus, .nav .open>a:hover, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover{
  border-bottom: 3px solid transparent;
  background: rgba(154, 154, 154, 0.27);
}
.navbar a, .dropdown-menu>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .navbar-toggle{
 color: #fff;
}
.dropdown-menu{
      -webkit-box-shadow: none;
    box-shadow:none;
}

.nav li:hover:nth-child(8n+1), .nav li.active:nth-child(8n+1){
  border-bottom: #b6f423 4px solid;
}
.nav li:hover:nth-child(8n+2), .nav li.active:nth-child(8n+2){
  border-bottom: #82e2ea 4px solid;
}
.nav li:hover:nth-child(8n+3), .nav li.active:nth-child(8n+3){
  border-bottom: #f8b42c 4px solid;
}
.nav li:hover:nth-child(8n+4), .nav li.active:nth-child(8n+4){
  border-bottom: #fd594a 4px solid;
}
.nav li:hover:nth-child(8n+5), .nav li.active:nth-child(8n+5){
  border-bottom: #e8479d 4px solid;
}
.nav li:hover:nth-child(8n+6), .nav li.active:nth-child(8n+6){
  border-bottom: #a12eeb 4px solid;
}
.nav li:hover:nth-child(8n+7), .nav li.active:nth-child(8n+7){
  border-bottom: #4785d9 4px solid;
}
.nav li:hover:nth-child(8n+8), .nav li.active:nth-child(8n+8){
  border-bottom: #2aed9a 4px solid;
}

.navbar-toggle .icon-bar{
    color: #fff;
    background: #000000;
}

/* Credit to bootsnipp.com for the css for the color graph 
 ESTO SOLO ES PARA EL FORMULARIO DE LOGIN
*/
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
<script>
function Submit(){
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	var name = document.form.name.value;
	
	if( name == "" )
	   {
	     document.form.name.focus() ;
		 document.getElementById("errorBox").innerHTML = "enter the first name";
	     return false;
	   }

	
	if (email == "" )
	{
		document.form.email.focus();
		document.getElementById("errorBox").innerHTML = "enter the email";
		return false;
	 }else if(!emailRegex.test(email)){
		document.form.email.focus();
		document.getElementById("errorBox").innerHTML = "enter the valid email";
		return false;
	 }
	 
	  

	</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>

$(document).ready(function(){
$("#name1").on("blur", function() {
    if ( $(this).val().match('^[a-zA-Z]{3,16}$') ) {
        //alert( "Valid name" );
    } else { $("#name1").val('');
        alert("Invalid name,Please use Alphabets");
    }
});


$("#email1").change(function(){
	 var data="email1="+$("#email1").val();
	// alert(data);
	 $.ajax({
		 url:'./CheckEmail',
		 data:data,
		 type:'post',
		 success:function(result)
		 { 
			 if(result.match("1"))
				 {
				 $("#email1").val('');
				 alert("Email Already exist");
				 }
		 }
	 });
	 
});

$("#email1").on("input", function(){
    var email = $("#email1").val();
    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (!filter.test(email)) {
      $(".invalid-email:empty").append("Invalid Email Address");
      $("#submit").attr("disabled", true);
    } else {
      $("#submit").attr("disabled", false);
      $(".invalid-email").empty();
    }
  });


$("#mobile1").on("blur", function() {
    if ( $(this).val().match('[0-9]{10}') ) {
        //alert( "Valid name" );
    } else { $("#mobile1").val('');
        alert("Please enter correct mobile no.");
    }
});

	
$("#mobile1").change(function(){
	 var data="mobile1="+$("#mobile1").val();
//	 alert(data);
	 $.ajax({
		 url:'./CheckMobile',
		 data:data,
		 type:'post',
		 success:function(result)
		 {
			 if(result.match("1"))
				 {
				 $("#mobile1").val('');
				 alert("Mobile Already exist");
				 }
		 }
	 });
	 
	 
});


});
 </script>
 
 <script type="text/javascript">
  
 function testEmailChars(el){
	    var email = $(el).val();
	    if ( /^[a-zA-Z0-9_@.-]+$/.test(email)==true ){
	        $("#email1").html("valid");
	    } else {
	        $("#email1").html("not valid");
	    }
	} 

</script>
 
 
 
</head>
<body>
<div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Asset Management System</a>
                </div>
                
            </div>
        </nav>
    </div>
</div>
</br>
</br>
</br>

<p1 align="right">
 <form action="./managerop" method="post">
<input type="hidden" value="${user}" name="eid" /> 
<input type="submit" value="Home" name="op" />
<input type="submit" value="Logout" name="op" />
</form>
</p1>

<center>
<h3><font color="blue">Update Manager ${user} profile</font></h3>
<h3><font color="red">${msg}</font></h3>
<%@page import="java.util.ArrayList,beans.Employee" %>

<%
ArrayList<Employee> ar=(ArrayList<Employee>)request.getAttribute("LIST");
for(Employee z:ar)
{
%>
<Center>
<form action="Managerprofileupdate" method="post">
<h3><font color="green">Name</font> : <input type="text" value="<%=z.getName()%>" id="name1" name="name" required/></h3>
<h3><font color="green">Address</font> : <input type="text" value="<%=z.getAddress()%>" name="address" required/></h3>
<h3><font color="green">Mobile No</font> : <input type="number" value="<%=z.getMobile()%>" pattern="[0-9]{10}"  id="mobile1" name="mobile" required/></h3>
<h3><font color="green">Email ID </font>: <input type="text" value="<%=z.getEmail()%>" id="email1" name="email" required/></h3>
<input type="submit" value="update profile" name="opreation"/>
</form>
</Center>
<%
}
%>
</center>
</body>
</html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
body{
    
    background-image:url('https://imgur.com/K9ddOC4.jpg');
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
 <form action="./adminop" method="post">
<input type="hidden" value="${user}" name="userid" /> 
<input type="submit" value="Home" name="op" />
<input type="submit" value="Logout" name="op" />
</form>
</p1>
<center>
<font color="red"><h1>Employee Details</h1></font>
<font color="green">
<h1>${msg}</h1>
<h1>${msg1}</h1>
</font>
<pre>
<table border="1" width="120%">
<tr><th>EID</th><th>Name</th><th>Address</th><th>MailID</th><th>Mobile</th><th>Designation</th><th>Manager Id</th><th>Support Id</th><th>Date of Joining</th><th>Status</th><th>Action</th></tr>

<%@page import="java.util.ArrayList,beans.Employee" %>
<%
ArrayList<Employee> ar=(ArrayList<Employee>)request.getAttribute("LIST");
for(Employee cc:ar)
{
	%>
<tr>
     <form action="./empAD" method="post">
    <%if(cc.getDesignation().equalsIgnoreCase("Manager"))
    	{%>
    	<td><%=(cc.getMid2())%></td>
    <input type="hidden" value="<%=cc.getMid2()%>" name="eid" />
      <%
    }
    else if(cc.getDesignation().equalsIgnoreCase("Employee"))
    {
    %>
    <td><%=(cc.getEid1())%></td>
    <input type="hidden" value="<%=cc.getEid1() %>" name="eid" />
    
    <%
    }
 else if(cc.getDesignation().equalsIgnoreCase("Support Team"))
    { 
    %>
    <td><%=(cc.getEid2())%></td>
    <input type="hidden" value="<%=cc.getEid2() %>" name="eid" />
    
    <%
    }
    %>
  
 
    <td><%=cc.getName()%></td>
    <td><%=cc.getAddress()%></td>
    <td><%=cc.getEmail()%></td>
    <td><%=cc.getMobile()%></td>
    <td><%=cc.getDesignation()%></td>
    <% %>
    <%
    if(cc.getDesignation().equalsIgnoreCase("Employee"))
	{ 
	%>
	<td><%=(cc.getMid1())%></td>
<%
} 
else
{
%>
<td>Not Available</td>
<%
} 
%>
  <%  if(cc.getDesignation().equalsIgnoreCase("Manager"))
    	{ 
    	%>
    	<td><%=(cc.getSid())%></td>
    <%
    } 
    else
    {
    %>
    <td>Not Available</td>
    <%
    } 
    %>
    <td><%=cc.getDateofjoin()%></td>
    
    <%  int st=0;
      String status;
      st=cc.getStatus(); 
      if(st==1)
      {
    	  status="Activated";
      }
      else
      {
    	  status="Deactivated";
      }
      %>
    <td><%=status%></td>  
    <td>
    <%if(status.equals("Deactivated"))
    	{%>
    <input type="submit" value="Activate" name="op" />
    <%} %>
    <%if(status.equals("Activated"))
    	{%>
    	<input type="submit" value="Deactivate" name="op" />
        <%} %>
        <input type="submit" value="Promote&Demote" name="op" />
        
    </td>
    </form>
</tr>
<% 
}
%>

</table>
</pre>
</center>
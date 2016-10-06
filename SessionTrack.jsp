<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
body {background-color: powderblue;}
table, th, td {
    border: 1px solid black;
}

</style>
</head>
<body>

<%
		
	      Date createTime = new Date(session.getCreationTime());
	      // Get last access time of this web page.
	      Date lastAccessTime = 
	                        new Date(session.getLastAccessedTime());

	      String title = "Welcome Back to my website";
	      Integer visitCount = new Integer(0);
	      String visitCountKey = new String("visitCount");
	      String userIDKey = new String("userID");
	      String userID = new String("ABCD");

	      // Check if this is new comer on your web page.
	       			if (session.isNew()){
      				title = "Welcome to my website";
      				session.setAttribute(userIDKey, userID);
     				session.setAttribute(visitCountKey,  visitCount);
  			 		} else{
	         visitCount = (Integer)session.getAttribute(visitCountKey);
	         visitCount = visitCount+1;
	         userID = (String)session.getAttribute(userIDKey);
	      
	      session.setAttribute(visitCountKey,  visitCount);
  			 		}
%>
<center>


<center><h1>Welcome To My Website</h1></center><br>
<center><h2>Session Information</h2></center><br>

<table >
<tr bgcolor="grey" ><th>Session info</th><th>value</th></tr>
<tr><td>id</td><td><%out.println(session.getId()); %></td></tr>
<tr><td>Creation time</td><td><%out.println(createTime); %></td></tr>
<tr><td>Time Of Last Access</td><td><%out.println(lastAccessTime); %></td></tr>
<tr><td>User Id</td><td><%out.println(userID); %></td></tr>
<tr><td>Number Of Visit</td><td><%out.println(visitCount); %></td></tr>
</table>

</center>

</body>

</html>
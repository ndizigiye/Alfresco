<html>
<head>
<%@ page import="com.alfresco.User" %>
<%@ page import="com.alfresco.Test" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="net.sf.json.JSONArray" %>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP witd tde current date</title>
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
<%!Test t = new Test();%>
<%!String voornaam="";%>
tde ticket <%=t.getTicketSchool()%> <br>

<%int a = t.getAantalUser();%>

<a href="/Alfresco/add_form.jsp">Voeg hier een gebruiker toe</a> </br>

<div class ="CSSTableGenerator">
<table>
    <tr>
      <td>Username</td>
      <td>Voornaam</td>
      <td>Achternaam</td>
      <td>Email</td>
      <td>Functie</td>
      <td>IsGast</td>
      <td>Bewerken</td>
      <td>Verwijderen</td>
    </tr>
<% 

for (int i=0; i<a; i++) {
User user = t.getUsers(i);
%>
<tr>
<td><%=user.getUserName()%></td>
<td><%=user.getFirstName()%></td>
<td><%=user.getLastName()%></td>
<td><%=user.getEmail()%></td>
<td><%=user.getJobtitle()%></td>
<td><%=user.isGuest()%></td>
<td><a href="/Alfresco/edit_form.jsp?username=<%=user.getUserName()%>">Edit</a></td>
<td><a href="/Alfresco/delete_user.jsp?username=<%=user.getUserName()%>">Delete</a></td>
</tr>
<%
    }
%>
</table>
</div>
</body>
</html>

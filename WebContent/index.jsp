<html>
<head>
<%@ page import="com.alfresco.User" %>
<%@ page import="com.alfresco.Test" %>
<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="net.sf.json.JSONArray" %>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP with the current date</title>
</head>
<body>
<%!Test t = new Test();%>
<%!String voornaam="";%>
The ticket <%=t.getTicket()%> <br>

<%int a = t.getAantalUser();%>

<a href="/Alfresco/add_form.jsp">Voeg hier een gebruiker toe</a> </br>

<div class ="CSSTableGenerator">
<table>
<thead>
    <tr>
      <th>Username</th>
      <th>Voornaam</th>
      <th>Achternaam</th>
      <th>Email</th>
      <th>Functie</th>
      <th>IsGast</th>
      <th>Bewerken</th>
      <th>Verwijderen</th>
    </tr>
  </thead>
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

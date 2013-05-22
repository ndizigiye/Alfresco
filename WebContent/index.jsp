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

<%int a = 4;%>
Gebruiker toevoegen

<form action="add_user.jsp" method="GET">
<input type="text" name="username"/>
<input type="text" name="firstname"/>
<input type="text" name="lastname"/>
<input type="text" name="email"/>
<input type="text" name="jobtitle"/>
<input type="text" name="isguest"/>
<input type="submit" value="Submit" />
</form>
Gebruikers <br>
<% 

for (int i=0; i<a; i++) {
User user = t.getUsers(i);
%>
Username: <%=user.getUserName()%><br>
Voornaam: <%=user.getFirstName()%><br>
Achternaam: <%=user.getLastName()%><br>
Email: <%=user.getEmail()%><br>
Job: <%=user.getJobtitle()%><br>
Is Gast?: <%=user.isGuest()%><br>
<br><br>
<%
    }

%>
</body>
</html>

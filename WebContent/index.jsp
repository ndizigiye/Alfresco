<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<%
/*JSONArray users = t.getUsers();
for (int i = 0; i < users.size(); ++i) {
    JSONObject user = users.getJSONObject(i);
    voornaam = user.getString("id");
}
*/%>
<%=t.getUsers()%>
</body>
</html>

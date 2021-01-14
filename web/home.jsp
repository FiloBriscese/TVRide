<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% if(session.getAttribute("userId") == null){ 	// forward not logged in users to login page %>
	<jsp:forward page="index.jsp" />
<% } %>

<html>
<head>
    <title>TVRide</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="navbar.jsp"/>
	<h3>Ciao <%=session.getAttribute("userName") %> <%=session.getAttribute("userSurname")%></h3>
	<h4>You are a <strong><%=session.getAttribute("userRole") %></strong></h4>
	<br>
	<br>
	<p>Your next ride is on DD/MM/YYYY, at HH:MM. From A to B (as a Passenger/you are the Driver)</p>
</body>
</html>
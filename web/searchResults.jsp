<%@ page contentType="text/html;charset=UTF-8" language="java" import="logic.bean.RideBean"%>
<jsp:useBean id="searchBean" scope="request" class="logic.bean.SearchBean"/>

<% if(session.getAttribute("userId") == null){ 	// forward not logged in users to login page %>
	<jsp:forward page="index.jsp" />
<% } %>

<html>
<head>
    <title>TVRide - Request Seat</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="navbar.jsp"/>

	<p>la tua ricerca. hai inviato questo searchBean:</p>
	<ul>
		<li>da: <%=searchBean.getFrom()%></li>
		<li>a: <%=searchBean.getTo()%></li>
		<li>il: <%=searchBean.getDate()%></li>
		<li>alle: <%=searchBean.getTime()%></li>
	</ul>
	
	<button type="button" onclick="alert('Hello world!')" style="float: center">click me</button>
	
	<h3>i risultati ottenuti:</h3>
	<br>
		<%
		for(RideBean ride : searchBean.getResults()){
		%>
			<div class="card">
				<div class="container">
					<strong><%= ride.getOwner() %></strong> [RIDE#<%= ride.getRideId() %>]<br>
					From: <%= ride.getSource() %><br>
					To: <%= ride.getDestination() %><br> 
					<%= ride.getDate() %> | <%= ride.getTime() %> <a href="prova.html"><button type="button" onclick="" style="float: right">Details</button></a>
					
					
					<!-- TODO prenotare corsa -->
					
					
				</div>
			</div>
			<br>
		<%
		}
		%>
</body>
</html>

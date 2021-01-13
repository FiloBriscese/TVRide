<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% if(session.getAttribute("userId") == null){ 	// se l'utente non è loggato, mandalo alla pagina di login %>
	<jsp:forward page="index.jsp" />
<% } %>

<html>
<head>
    <title>TVRide</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<ul class="nav">
		<li class="nav"><a class="nav_logo">TVRide</a></li>
		<li class="nav"><a class="nav_active">Home</a></li>
		<li class="nav"><a href="requestSeat.jsp">Request Seat</a></li>
		<li class="nav"><a >Your Requests</a></li>
		<%
		if (session.getAttribute("userRole").equals("Passenger")) {
		%>
			<li class="nav"><a >Become a Driver</a></li>
		<%
		} else if (session.getAttribute("userRole").equals("Driver")) {
		%>
		<li class="nav"><a >Offer a Ride</a></li>
		<li class="nav"><a >Your Rides</a></li>
		<%
		}
		%>
		<li class="nav"><a href="profile.jsp">Your Profile</a></li>
		<li style="float:right; background-color:red"><a href="logout.jsp">Log out</a></li>
		<li class="nav" style="float:right"><a >Notifications</a></li>
	</ul>
	
<!-- mantieni tutte le righe qui sopra e modifica da qui in giu -->
	
	<h3>Ciao <%=session.getAttribute("userName") %> <%=session.getAttribute("userCognome")%></h3>
	<br>
	<br>
	<p>qui mettere tipo: la tua prossima corsa è il XX alle XX da X a X (come Passeggero/Driver)</p>
</body>
</html>
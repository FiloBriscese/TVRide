<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<jsp:useBean id="searchBean" scope="request" class="logic.bean.SearchBean"/>
<jsp:setProperty name="searchBean" property="*"/>

<% if(session.getAttribute("userId") == null){ 	// forward not logged in users to login page %>
	<jsp:forward page="index.jsp" />
<% } %>

<html>
<head>
    <title>TVRide - Request Seat</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<ul class="nav">
		<li class="nav"><a class="nav_logo">TVRide</a></li>
		<li class="nav"><a href="home.jsp">Home</a></li>
		<li class="nav"><a class="nav_active">Request Seat</a></li>
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
	<p> TODO cose da fare</p>
	<ul>
	    <li>  unire search e result bean</li>
	    <li>  dettagli di una corsa: id, proprietario, start, finish, data, ora, posti</li>
	    <li>  mandare richiesta prenotazione</li>
	    <li>  usare tipo di dato che descriva posizione geografica</li>
	</ul>
	<form action="requestSeat.jsp" name="searchRideForm" method="POST">
		<table>
			<tr>
				<td><label for="from">From:</label></td>
				<td><input type="text" id="from" name="from" autocomplete="off" autofocus required></td>
			</tr>
			<tr>
				<td><label for="to">To:</label></td>
				<td><input type="text" id="to" name="to" autocomplete="off" required></td>
			</tr>
			<tr>
				<td><label for="date">Date:</label></td>
				<td><input type="date" id="date" name="date" required></td>
			</tr>
			<tr>
				<td><label for="time">Time:</label></td>
				<td><input type="time" id="time" name="time" required></td>
			</tr>
			<tr>
				<td><input type="submit" name="search" value="Search"></td>
				<%
				if (request.getParameter("search") != null) {
					searchBean.search();
					/*
					if searchbean.results is null
						mostra errore: ricerca invalida
					else
						forward */
					
					//resultBean.setRides(RequestSeatWebController.getInstance().search(searchBean).getRides());
				%>
	                <jsp:forward page="searchResults.jsp"/>
				<%
				}
				%>
			</tr>
		</table>
	</form>
</body>
</html>

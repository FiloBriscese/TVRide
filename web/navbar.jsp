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
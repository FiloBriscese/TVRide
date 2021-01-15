<jsp:useBean id="rideBean" scope="request" class="logic.bean.RideBean"/>

<html>
<body>
	<p>prova</p>
	<p>hai selezionato ride con rideId = <%=request.getParameter("rideId") %></p>
	<p><%=rideBean.getOwner() %></p>
</body>
</html>
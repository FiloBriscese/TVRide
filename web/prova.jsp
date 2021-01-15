<%@ page contentType="text/html;charset=UTF-8" language="java""%>
<jsp:useBean id="rideBean" scope="request" class="logic.bean.RideBean"/>

<html>
<body>
	<p>prova</p>
	<p>hai selezionato ride con rideId = <%=request.getParameter("rideId") %></p>
	<p><%=rideBean.getOwner() %></p>
	<p><%=rideBean.getRideId() %></p> <!-- non viene settato -->
<br>
	<!--  <p>%=(SearchBean)request.getAttribute("results").get(1) %></p>-->
</body>
</html>
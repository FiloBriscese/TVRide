<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="loginBean" scope="request" class="logic.bean.LoginBean"/>
<jsp:setProperty name="loginBean" property="*"/>

<% if(session.getAttribute("userId") != null){ 	// forward already logged in users to homepage %>
	<jsp:forward page="home.jsp" />
<% } %>

<html>
<head>
	<title>TVRide - Log in</title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<br>
	<h1 style="color: green; text-align: center; font-size: 42px">TVRide</h1>
	<form action="index.jsp" method="POST">
		<table style="margin-left: auto; margin-right: auto">
			<tr>
				<td style="padding: 8px"><label for="studentId">Username</label></td>
				<td><input type="text" id="studentId" name="studentId" required autocomplete="off"></td>
			</tr>
			<tr>
				<td style="padding: 8px"><label for="password">Password</label></td>
				<td><input type="password" id="password" name="password" required></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center; padding: 16px"><input type="submit" name="login" value="Log in" style="font-size: 19px"></td>
			</tr>
		</table>
	</form>
<%
if (request.getParameter("login") != null) {
	if (loginBean.validate()) {
		session.setAttribute("userId", loginBean.getStudentId());
		session.setAttribute("userName", loginBean.getName());
		session.setAttribute("userSurname", loginBean.getSurname());
		session.setAttribute("userRole", loginBean.getRole());
%>
		<jsp:forward page="home.jsp"/>
<%
	} else {
%>
<h3 style="color: red; text-align: center" >Wrong username or password</h3>
<%
	}
}
%>
</body>
</html>
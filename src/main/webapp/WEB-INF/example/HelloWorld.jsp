<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    Menu
</head>

<body>

	<s:url action="goto_verReservaciones" var="goto_verReservaciones"/>
	<s:url action="goto_historialReservaciones" var="goto_historialReservaciones"/>
	<s:url action="goto_historialFeedback" var="goto_historialFeedback"/>
	<s:url action="goto_Feedback" var="goto_Feedback"/>
	<a href="${goto_verReservaciones}">Ver reservaciones</a>
   	<a href="${goto_historialReservaciones}">Historial Reservaciones</a>
   	<a href="${goto_historialFeedback}">Historial Feedback</a>
   	<a href="${goto_Feedback}">Crear Feedback</a>
   	 


</body>
</html>

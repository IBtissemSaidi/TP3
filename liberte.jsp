<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="democratie" class="beans.Democratie"/>
<%
int voix   = democratie.voter();
%>

<h1><font color="hotpink">Vote pour la d�mocratie</font></h1>
<p>Nombre de voix apr�s le vote : <%= ++
voix%></p>

</body>
</html>
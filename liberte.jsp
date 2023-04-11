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

<h1><font color="hotpink">Vote pour la démocratie</font></h1>
<p>Nombre de voix après le vote : <%= ++
voix%></p>

</body>
</html>
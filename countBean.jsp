<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>counter page</title>
</head>
<body>
<p> On rep�re le Bean par nom le nomBean<br>
<jsp:useBean id="nomBean" class="beans.SimpleBean" scope="session" />
<p>On accede au compteur avec la m�thode getCompteur
<br>compteur =  <%= nomBean.getCompteur() %>
<hr>
<p>On incremente le compteur avec la methode increment<% nomBean.increment(); %>
<p>On peut acc�der � la propri�t� par la balise getProperty:<br>
<jsp:getProperty name="nomBean" property="compteur"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="auth" class="beans.Authentication" scope="session"></jsp:useBean>
<jsp:setProperty property="login" name="auth" value="USER1"/>
<jsp:setProperty property="password" name="auth" value="PASS1"/>
<b>vous avez saisi:</b>
<p>nom use:<jsp:getProperty property="login" name="auth"/><br>
mot de pass:<jsp:getProperty property="password" name="auth"/>
<br></p> 
<%
boolean valide = auth.valide();
if(valide){

%><font color="green">ces parametere sont correcte</font>
<%}
else{
	%><font color="red">ces authentification est invalide.</font>
	<%} %>

</body>
</html>
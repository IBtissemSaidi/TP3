<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Les livre</title>
</head>
<body>
<jsp:useBean id="livre" class="beans.Livre" scope="session"/>
<h1><center><font color="hotpink">Livre</font></center></h1>

    <p>Auteur : <%= livre.getAuteur() %></p>
    <p>Titre : <%= livre.getTitre() %></p>
    <p>Editeur : <%= livre.getEditeur() %></p>

    <form action="livre.jsp" method="post">
        <label for="auteur">Auteur :</label>
        <input type="text" id="auteur" name="auteur" value="<%= livre.getAuteur() %>"><br><br>

        <label for="titre">Titre :</label>
        <input type="text" id="titre" name="titre" value="<%= livre.getTitre() %>"><br><br>
        
          <label for="editeur">Editeur :</label>
        <input type="text" id="editeur" name="editeur" value="<%= livre.getEditeur() %>"><br><br>
 <input type="submit" value="Enregistrer">
    </form>

    <%
        if(request.getMethod().equals("POST")) {
            String auteur = request.getParameter("auteur");
            String titre = request.getParameter("titre");
            String editeur = request.getParameter("editeur");
            
            livre.setAuteur(auteur);
            livre.setTitre(titre);
            livre.setEditeur(editeur);
        }
    %>

    <p>Nouvel auteur : <%= livre.getAuteur() %></p>
    <p>Nouveau titre : <%= livre.getTitre() %></p>
    <p>Nouveau editeur : <%= livre.getEditeur() %></p>
</body>
</html>
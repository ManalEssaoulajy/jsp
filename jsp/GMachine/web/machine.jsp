<%-- 
    Document   : machine
    Created on : 24 oct. 2023, 18:09:59
    Author     : DELL
--%>

<%@page import="entities.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="MachineController" method="GET">
            <fieldset>
                <legend>Informations machine </legend>
                <table border="0">
                    
                        <tr>
                            <td> Reference:</td>
                            <td><input type="text" name="ref" value="" /></td>
                        </tr>
                        <tr>
                            <td> Marque:</td>
                            <td><input type="text" name="marque" value="" /></td>
                        </tr>
                        <tr>
                            <td> Prix: </td>
                            <td><input type="text" name="prix" value="" /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Ajouter" /><input type="reset" value="Annuler" /></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>

            </fieldset>
        </form>
        
        <fieldset>
            <legend>Liste de machine</legend><table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Reference</th>
                        <th>Marque</th>
                        <th>Prix</th>
                        <th>Modifier</th>
                        <th>Supprimer</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        MachineService ms= new MachineService();
                        for(Machine m: ms.findAll()){
                        
                    %>
                    <tr>
                        <td><%= m.getId()%></td>
                        <td><%= m.getRef()%></td>
                        <td><%= m.getMarque()%></td>
                        <td><%= m.getPrix()%></td>
                        <td><a href="MachineController?op=update&id=<%=m.getId()%>">Modifier</a></td>
                        <td><a href="MachineController?op=delete&id=<%= m.getId()%>">Supprimmer</a></td>
                        
                    </tr>
                    <% } %>
                </tbody>
            </table>

        </fieldset>  
    </body>
</html>

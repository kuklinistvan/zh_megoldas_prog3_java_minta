<%-- 
    Document   : szamla
    Created on : 2019.12.05., 10:53:44
    Author     : kuklinistvan
--%>

<%@page import="com.kuklinistvan.javazh.Feltet"%>
<%@page import="com.kuklinistvan.javazh.Pizza"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Számla</title>
        <style>
            table, td {
                border: 1px solid black;
                border-collapse: 1;
            }
        </style>
    </head>
    <body>
        <%
            Pizza pizza = (Pizza)session.getAttribute("pizza");
        %>
        
        <table>
            <thead>
                <td colspan="4" style="text-align: center"><b>Végleges számla</b></td>
            </thead>
            <tr>
                <td><b>Vevő neve:</b></td>
                <td><% out.println(session.getAttribute("nev")); %></td>
                <td><b>Vevő címe:</b></td>
                <td><% out.println(session.getAttribute("cim")); %></td>
            </tr>
            <tr>
                <td><b>Pizza mérete:</b></td>
                <td><% out.println(pizza.getMeret()); %> cm</td>
                <td><b>Pizza ára:</b></td>
                <td><% out.println(pizza.calculateAr()); %></td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: center"><b>Feltétek listája</b></td>
            </tr>
            
            <%
                for (Feltet feltet : pizza.getAktualisFeltetek()) {
                    out.println("<tr>");
                    out.println("<td colspan=\"2\">" + feltet.getNev() +"</td>");
                    out.println("<td colspan=\"2\">" + feltet.getAr() + "</td>");
                    out.println("</tr>");
                }
            %>
                
                <!-- <td colspan="2">FELTÉT NEVE IDE</td>
                <td colspan="2">FELTÉT ÁRA IDE</td> -->
            
        </table>
    </body>
</html>

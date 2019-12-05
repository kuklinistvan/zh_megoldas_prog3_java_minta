<%-- 
    Document   : feltet_customization
    Created on : 2019.12.05., 10:40:54
    Author     : kuklinistvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, td {
                border: 1px solid black;
                border-collapse: 1;
            }
        </style>
    </head>
    <body>
        <p>A rendelt pizza mérete: <% out.println(request.getParameter("meret")); %></p>
        
        <p><b>Az aktuálisan választott feltétek:</b></p>
        <table>
            <thead>
                <td>#</td>
                <td>Kiválasztott feltét</td>
                <td>Feltét ára</td>
                <td>-</td>
            </thead>
            <tr>
                <td>1</td>
                <td>Finom feltét</td>
                <td>Jó sok</td>
                <td><a href="?del=1">Törlés</a></td>
            </tr>
        </table>
        <br>
        <b>Új feltét felvétele:</b>
        <table>
            <thead>
                <td>#</td>
                <td>Választható feltét</td>
                <td>Feltét ára</td>
                <td>-</td>
            </thead>
            <tr>
                <td>1</td>
                <td>Finom feltét</td>
                <td>Jó sok</td>
                <td><a href="?add=1">Felvétel</a></td>
            </tr>
        </table>
        
        <br>
        <input type="submit" value="Rendelés" />
    </body>
</html>

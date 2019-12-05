<%-- 
    Document   : szamla
    Created on : 2019.12.05., 10:53:44
    Author     : kuklinistvan
--%>

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
        <table>
            <thead>
                <td colspan="4" style="text-align: center"><b>Végleges számla</b></td>
            </thead>
            <tr>
                <td><b>Vevő neve:</b></td>
                <td>VEVŐ NEVE IDE</td>
                <td><b>Vevő címe:</b></td>
                <td>VEVŐ CÍME IDE</td>
            </tr>
            <tr>
                <td><b>Pizza mérete:</b></td>
                <td>PIZZA MÉRETE IDE</td>
                <td><b>Pizza ára:</b></td>
                <td>PIZZA ÁRA IDE</td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: center"><b>Feltétek listája</b></td>
            </tr>
            <tr>
                <td colspan="2">FELTÉT NEVE IDE</td>
                <td colspan="2">FELTÉT ÁRA IDE</td>
            </tr>
        </table>
    </body>
</html>

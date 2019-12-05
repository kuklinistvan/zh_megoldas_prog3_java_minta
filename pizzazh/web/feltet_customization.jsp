<%-- 
    Document   : feltet_customization
    Created on : 2019.12.05., 10:40:54
    Author     : kuklinistvan
--%>

<%@page import="com.kuklinistvan.javazh.Feltet"%>
<%@page import="com.kuklinistvan.javazh.Pizza"%>
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
        <form action="szamla.jsp">
            <%
                request.setCharacterEncoding("UTF-8");
                
                // TÁROLÁS
                
                if(request.getParameter("meret") != null) {
                    Pizza pizza = Pizza.FromIntMeret( Integer.parseInt(request.getParameter("meret")) );
                    
                    session.setAttribute("pizza",  pizza);
                    session.setAttribute("nev", request.getParameter("nev"));
                    session.setAttribute("cim", request.getParameter("cim"));
                }
                
                // TÁROLÁS VÉGE

                Pizza pizza = (Pizza) session.getAttribute("pizza");

                // HANDLING REQUEST

                String addParam = request.getParameter("add");
                String delParam = request.getParameter("del");

                if(addParam != null) {
                    out.println("<p><b><span style=\"color: red;\" />Feltét hozzáadva!</b></span>");
                    int addParamNumber = Integer.parseInt(addParam);
                    pizza.addFeltet( Feltet.VALASZTHATO_FELTETEK[addParamNumber - 1] );
                } else if (delParam != null) {
                    out.println("<p><b><span style=\"color: red;\" />Feltét törölve!</b></span>");
                    int delParamNumber = Integer.parseInt(delParam);
                    pizza.delFeltet(delParamNumber - 1);
                }
            %>

            <p>A rendelt pizza mérete: <% out.println(session.getAttribute("meret")); %></p>

            <p><b>Az aktuálisan választott feltétek:</b></p>
            <table>
                <thead>
                    <td>#</td>
                    <td>Kiválasztott feltét</td>
                    <td>Feltét ára</td>
                    <td>-</td>
                </thead>
                <%
                    int i = 1;
                    for (Feltet feltet : pizza.getAktualisFeltetek()) {
                        String link = "<a href=?del=" + i + ">" + "Törlés</a>";
                        out.println("<tr><td>" + i + "</td><td>" + feltet.getNev() + "</td><td>" + feltet.getAr() + "</td><td>" + link + "</td></tr>");
                        i++;
                    }
                %>

                <!--<tr>
                    <td>1</td>
                    <td>Finom feltét</td>
                    <td>Jó sok</td>
                    <td><a href="?del=1">Törlés</a></td>
                </tr>-->
            </table>
            <br>
            <p><b>Új feltét felvétele:</b></p>
            <table>
                <thead>
                    <td>#</td>
                    <td>Választható feltét</td>
                    <td>Feltét ára</td>
                    <td>-</td>
                </thead>
                <%
                    int j = 1;
                    for (Feltet feltet : Feltet.VALASZTHATO_FELTETEK) {
                        String link = "<a href=?add=" + j + ">" + "Felvétel</a>";
                        out.println("<tr><td>" + j + "</td><td>" + feltet.getNev() + "</td><td>" + feltet.getAr() + "</td><td>" + link + "</td></tr>");
                        j++;
                    }
                %>

                <!--<tr>
                    <td>1</td>
                    <td>Finom feltét</td>
                    <td>Jó sok</td>
                    <td><a href="?add=1">Felvétel</a></td>
                </tr>-->
            </table>

            <br>
            <input type="submit" value="Rendelés" />
        </form>
    </body>
</html>

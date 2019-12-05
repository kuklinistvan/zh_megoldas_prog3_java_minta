<%-- 
    Document   : debug_params
    Created on : 2019.12.05., 10:12:46
    Author     : kuklinistvan
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>Paraméterek</title>
    </head>
    <body>
        <h1>Paraméterek listája</h1>
        
        <table>
            <thead>
                <td>Kulcs</td>
                <td>Érték</td>
            </thead>
            <%
                request.setCharacterEncoding("UTF-8");
                
                Enumeration<String> parameterNames = request.getParameterNames();
                
                while(parameterNames.hasMoreElements()) {
                    String key = parameterNames.nextElement();
                    String[] values = request.getParameterValues(key);
                    
                    for(String value : values) {
                        out.println("<tr><td>" + key + "</td><td>" + value + "</td></tr>");
                    }
                }
            %>
        </table>
    </body>
</html>

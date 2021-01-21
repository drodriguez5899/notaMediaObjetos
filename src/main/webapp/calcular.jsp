<%-- 
    Document   : calcular
    Created on : 21-ene-2021, 12:31:30
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="miNota" class="clases.Nota"/>
        <%  float miNota1= Float.parseFloat(request.getParameter("nota1"));
            float miNota2= Float.parseFloat(request.getParameter("nota2"));
            float miNota3= Float.parseFloat(request.getParameter("nota3"));
            String miNombre = request.getParameter("nombre");            
           %>
           <jsp:setProperty name="miNota" property="nota1" value="<%= miNota1 %>" />
           <jsp:setProperty name="miNota" property="nota2" value="<%= miNota2 %>" />
           <jsp:setProperty name="miNota" property="nota3" value="<%= miNota3 %>" />
           <jsp:setProperty name="miNota" property="nombre" value="<%= miNombre %>" />
           <h3>El nombre es <jsp:getProperty name="miNota" property="nombre"/> </h3>
           <h3>La nota media es de <jsp:getProperty name="miNota" property="notaMedia"/></h3>
            <% if ((miNota1+miNota2+miNota3)/3>=5){%>
            <h2 style="color: green;" >APROBADO</h2>    
        <% }else{ %>
        <h2 style="color: red" >SUSPENSO</h2>
        <% } %>
           
           
    </body>
</html>

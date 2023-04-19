<%-- 
    Document   : codigo
    Created on : 18-04-2023, 23:03:56
    Author     : gonza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css"/>
        <title>Resultado JSP</title>
    </head>
    <body>
        
        <div class="container">
            
        
            <h1 class="text-center titulo2">Resultado</h1>
        <%
            float resultado = 0;
            float nro1 = 0;
            float nro2 = 0;
            nro1 = Float.parseFloat(request.getParameter("nro1"));
            nro2 = Float.parseFloat(request.getParameter("nro2"));

            if (request.getParameter("sumar") != null) {
                resultado = nro1 + nro2;
                out.print("<h1 class='text-center mt-5 resultado'>"+resultado+"</h1");
            }else if (request.getParameter("restar") != null){
                resultado = nro1 - nro2;
                out.print("<h1 class='text-center mt-5 resultado'>"+resultado+"</h1");
            }else if (request.getParameter("dividir") != null){
                resultado = nro1 / nro2;
                out.print("<h1 class='text-center mt-5 resultado'>"+resultado+"</h1");
            }else{
                resultado = nro1 * nro2;
                out.print("<h1 class='text-center mt-5 resultado'>"+resultado+"</h1");
            }
            


        %> 
        <br/>
        <a href="index.html" class="btn btn-primary" >Regresar</a>
        </div>
    </body>
</html>

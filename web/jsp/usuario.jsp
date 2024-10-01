<%-- 
    Document   : usuario
    Created on : 30 sept 2024, 19:42:49
    Author     : fgmrr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesión</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f4f4f9;
                margin: 0;
                display: flex; 
                justify-content: center; 
                align-items: center; 
                height: 100vh; 
            }

            .container {
                text-align: center;
                background-color: white;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                max-width: 400px;
                width: 100%;
            }

            h1 {
                font-size: 24px;
                color: #333;
                margin-bottom: 20px;
            }

            a {
                display: inline-block;
                text-decoration: none;
                background-color: #007bff;
                color: white;
                padding: 10px 20px;
                border-radius: 5px;
                transition: background-color 0.3s ease;
                margin-top: 20px; /* Espacio superior para el botón */
            }

            a:hover {
                background-color: #0056b3;
            }

            a:active {
                background-color: #003d80;
            }

        </style>
        <%
            String valor = "";
            Cookie[] cookies = request.getCookies();

            if (cookies != null) {
                for (Cookie c : cookies) {
                    if (c.getName().equals("matricula")) {
                        valor = c.getValue();
                        break;
                    }
                }
            }
        %>
    </head>
    <body>
       <div class="container">
            <h1>Bienvenido <%= valor%>, ha iniciado sesión de manera correcta.</h1>
            <a href="${pageContext.request.contextPath}/login_servlet">Cerrar Sesión</a>
        </div>
    </body>
</html>
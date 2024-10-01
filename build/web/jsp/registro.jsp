<%-- 
    Document   : registro
    Created on : 30 sept 2024, 19:42:39
    Author     : fgmrr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            form {
                background-color: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                width: 300px;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            form input[type="text"],
            form input[type="password"] {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 14px;
            }

            form input[type="submit"] {
                background-color: #007bff;
                color: white;
                padding: 10px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin-top: 20px;
                width: 100%;
                font-size: 16px;
                transition: background-color 0.3s ease, transform 0.2s ease;
            }

            form input[type="submit"]:hover {
                background-color: #0056b3;
                transform: translateY(-3px);
            }

            form input[type="submit"]:active {
                transform: translateY(0);
            }
              a {
                text-decoration: none;
                text-align: center;
                background-color: #6c757d;
                color: white;
                padding: 10px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                width: 100%;
                font-size: 16px;
                margin-top: 10px;
                margin-bottom: 30px;
                transition: background-color 0.3s ease, transform 0.2s ease;
            }

            a:hover {
                background-color: #5a6268;
                transform: translateY(-3px);
            }

        </style>
    </head>
    <body>
        <form method="POST" action="${pageContext.request.contextPath}/credenciales">
           <a href="${pageContext.request.contextPath}">Atrás</a>
            Matrícula: <br><!-- comment -->
            <input type="text" name="matricula" id="matricula" size="9"> <br>
            Password: <br>
            <input type="password" name="password" id="password" size="9"><br>
            <br>
            <br>
            <input type="submit" value="Registro"><br>
        </form>
    </body>
</html>

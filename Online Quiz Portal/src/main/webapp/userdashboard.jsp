<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: Lavender;
            margin: 0;
            padding: 0;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
            font-family: Serif;
            color: Tomato;
            font-size: 50px;
            margin-top: 50px;
        }
        
        h2 {
            text-align: center;
            color: DarkOrchid;
            font-size: 30px;
            margin-bottom: 20px;
        }
        
        .welcome-message {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .action-link {
            display: block;
            margin: 0 auto 10px;
            text-align: center;
            padding: 10px 20px;
            background-color: DodgerBlue;
            color: #fff;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        
        .action-link:hover {
            background-color: RoyalBlue;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Online Quiz Portal</h1>
        <h2>Welcome to the User Dashboard</h2>
        <p class="welcome-message">Welcome, <%= session.getAttribute("name") %>!</p>
        <a href="sqlTestServlet" class="action-link">Attempt Test</a>
    </div>
</body>
</html>


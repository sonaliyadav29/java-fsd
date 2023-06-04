<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>SQL Test Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffe6ff;
        }
        
        h1 {
            text-align: center;
            margin-top: 50px;
        }
        
        p {
            text-align: center;
            font-size: 30px;
            margin-top: 20px;
        }
        
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #333;
            padding: 20px 40px;
            border: 2px solid #333;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        
        a:hover {
            background-color: #333;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1> Test Result</h1>
    <p>Your score: <%= request.getAttribute("score") %></p>
    <a href="userdashboard.jsp">Back to Dashboard</a>
</body>
</html>


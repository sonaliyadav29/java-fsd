<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome to the Online Quiz Portal</title>
    <style>
        body {
            text-align: center;
            background-color: LightGoldenRodYellow;
        }
        
        h1 {
            margin-top: 120px;
            font-family: serif;
            color: Tomato;
            font-size: 70px;
        }
        
        h3 {
            margin-top: 50px;
        }
        
        ul {
            list-style-type: none;
            padding: 0;
        }
        
        li {
            display: inline-block;
            margin: 30px;
        }
        
        a {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }
        
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Quiz Portal!</h1>
    <ul>
        <li><a href="userregister.jsp">Student Registration</a></li>
        <li><a href="userlogin.jsp">Student Login</a></li>
        <li><a href="adminlogin.jsp">Admin Controls</a></li>
    </ul>
</body>
</html>

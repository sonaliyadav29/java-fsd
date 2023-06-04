<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: LightCyan ;
            font-family: Arial, sans-serif;
        }
        
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        form {
            text-align: center;
            background-color: #fff;
            padding: 40px;
            border-radius: 6px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            max-width: 300px;
            width: 100%;
        }
        
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        
        .button {
            text-decoration: none;
            background-color: #008CBA;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            display: inline-block;
        }
        
        .button:hover {
            background-color: #0077A3;
        }
    </style>
</head>
<body>
    <div>
        <h1>Admin Login</h1>
        <form action="adminLoginServlet" method="post">
            <label for="email">Enter the email:</label><br>
            <input type="email" id="email" name="email"><br>
            <label for="password">Enter the password:</label><br>
            <input type="password" id="password" name="password"><br><br>
            <input type="submit" value="Login">
        </form> <br>
        <h3><a href="index.jsp" class="button">Main</a></h3> 
    </div>
</body>
</html>




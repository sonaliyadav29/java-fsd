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
            background-color: #f3e6ff;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            text-align: center;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a.button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #e8e8e8;
            color: #333;
            text-decoration: none;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <div>
        <h1>Online Quiz Portal</h1>
        <h2>User Login</h2>
        <form action="userloginServlet" method="post">
            Email: <br>
            <input type="email" name="email"><br>
            Password: <br>
            <input type="password" name="password"><br><br>
            <input type="submit" value="Login">
        </form>
        <br>
        <h3><a href="index.jsp" class="button">Main</a></h3>
    </div>
</body>
</html>


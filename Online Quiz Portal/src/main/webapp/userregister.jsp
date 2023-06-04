<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }

        h1 {
            text-align: center;
            margin-top: 50px;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        table {
            width: 300px;
            margin: 0 auto;
            border-collapse: collapse;
        }

        tr {
            border-bottom: 1px solid #ccc;
        }

        td {
            padding: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
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

        a {
            text-decoration: none;
            color: #333;
            margin-top: 20px;
            display: block;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div>
        <h1>Online Quiz Portal</h1>
        <h2>Registration Page</h2>
        <form action="registerServlet" method="POST">
            <table>
                <tr>
                    <td><input type="text" name="name" placeholder="Name"></td>
                </tr>
                <tr>
                    <td><input type="email" name="email" placeholder="Email"></td>
                </tr>
                <tr>
                    <td><input type="password" name="password" placeholder="Password"></td>
                </tr>
                <tr>
                    <td><input type="date" name="dob" placeholder="Date of Birth"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="Register">
            <br><br>
            <a href="index.jsp">Main</a>
        </form>
    </div>
</body>
</html>


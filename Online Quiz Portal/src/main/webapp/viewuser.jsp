<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.user.User"%>
<%@ page import="com.user.UserDAO"%>
<%@ page import="java.util.List"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: PapayaWhip ;
    }
    
    h1 {
        text-align: center;
        margin-top: 30px;
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
    }

    th {
        background-color: #e8e8e8;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #e6e6e6;
    }

    a {
        text-decoration: none;
        color: #333;
        margin-right: 5px;
        padding: 6px 10px;
        border: 1px solid #ccc;
        border-radius: 3px;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #e8e8e8;
    }

    .admin-link {
        display: block;
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body>
    <h1>User List</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Date of Birth</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
            UserDAO userDAO = new UserDAO();
            List<User> userList = userDAO.getAllUsers();
            for (User user : userList) { %>
            <tr>
                <td><%= user.getId() %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getDob() %></td>
                <td>
                    <a href="edituser?userId=<%= user.getId() %>">Edit</a>
                    <a href="deleteuser?userId=<%= user.getId() %>">Delete</a>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
    
    <div class="admin-link">
        <a href="admindashboardpage.jsp">Go Back to Admin Dashboard</a>
    </div>
</body>
</html>


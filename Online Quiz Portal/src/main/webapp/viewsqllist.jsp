<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.questions.SQLQuestion" %><%@ include file="header.jsp" %>
<%@ page import="com.questions.SQLQuestionDAO" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View SQL Questions</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: LemonChiffon ;
    }
    
    h1 {
        text-align: center;
        margin-top: 50px;
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    
    th, td {
        border: 1px solid black;
        padding: 10px;
        text-align: left;
    }
    
    th {
        background-color: LightSeaGreen;
        font-weight: bold;
    }
    
    tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    
    a {
        text-decoration: none;
        color: #333;
        padding: 5px 10px;
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
    <h1>View SQL Questions</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Question</th>
                <th>Options</th>
                <th>Correct Option</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
            SQLQuestionDAO sqlQuestionDAO = new SQLQuestionDAO();
            List<SQLQuestion> questionList = sqlQuestionDAO.getAllSQLQuestions();
            for (SQLQuestion question : questionList) { %>
                <tr>
                    <td><%= question.getId() %></td>
                    <td><%= question.getQuestion() %></td>
                    <td><%= question.getOption1() %>, <%= question.getOption2() %>, <%= question.getOption3() %>, <%= question.getOption4() %></td>
                    <td><%= question.getCorrectOption() %></td>
                    <td>
                        <a href="editsqlquestion?id=<%= question.getId() %>">Edit</a>
                        <a href="deletesqlquestion?id=<%= question.getId() %>">Delete</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>

    <div class="admin-link">
        <a href="admindashboardpage.jsp">Go Back Admin Dashboard</a>
    </div>
</body>
</html>


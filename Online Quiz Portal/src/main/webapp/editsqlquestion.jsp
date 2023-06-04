<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ page import="com.questions.SQLQuestion" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        
        h1 {
            text-align: center;
            margin-top: 50px;
        }
        
        form {
            width: 400px;
            margin: 20px auto;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        input[type="submit"] {
            display: block;
            width: 100%;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        
        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            color: #333;
            text-decoration: none;
        }
        
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Edit SQL Question</h1>
    <form action="editsqlquestion" method="post">
        <input type="hidden" name="id" value="<%= ((SQLQuestion) request.getAttribute("question")).getId() %>">
        <label>Question:</label>
        <input type="text" name="question" value="<%= ((SQLQuestion) request.getAttribute("question")).getQuestion() %>">
        <label>Option 1:</label>
        <input type="text" name="option1" value="<%= ((SQLQuestion) request.getAttribute("question")).getOption1() %>">
        <label>Option 2:</label>
        <input type="text" name="option2" value="<%= ((SQLQuestion) request.getAttribute("question")).getOption2() %>">
        <label>Option 3:</label>
        <input type="text" name="option3" value="<%= ((SQLQuestion) request.getAttribute("question")).getOption3() %>">
        <label>Option 4:</label>
        <input type="text" name="option4" value="<%= ((SQLQuestion) request.getAttribute("question")).getOption4() %>">
        <label>Correct Option:</label>
        <input type="number" name="correctOption" value="<%= ((SQLQuestion) request.getAttribute("question")).getCorrectOption() %>">
        <input type="submit" value="Update">
    </form>
    <a href="viewsqllist.jsp">Back to List</a>
</body>
</html>


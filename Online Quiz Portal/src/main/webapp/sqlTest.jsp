<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.questions.SQLQuestion" %>
<%@ include file="header.jsp" %>
<%@ page import="com.questions.SQLQuestionDAO" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>SQL Test</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: AntiqueWhite;
            margin-0;
            padding:0;
        }

        h1 {
            color: Tomato;
            font-size: 40px;
            text-align:center;
            margin-top: 50px;
        }

        h3 {
            color: DarkOrchid;
            font-size:25px;
            margin-top: 30px;
        }

        form {
            text-align: center;
            margin-top: 30px;
            font-size:25px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
label{
display:block;
margin-top:20px;
font-size:18px; 
font-weight:bold;
}
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        hr {
            border: 1px solid #ddd;
            margin: 20px 0;
        }
    </style>
</head>
<body style="background-color: #ffffcc" >
    <h2>SQL Test</h2>
    <form action="submitAnswerServlet" method="post">
        <% 
        List<SQLQuestion> questionList = SQLQuestionDAO.getAllSQLQuestions();
        if (questionList != null) {
            for (SQLQuestion question : questionList) { %>
                <h3><%= question.getQuestion() %></h3>
                <input type="hidden" name="questionId" value="<%= question.getId() %>">
                <input type="radio" name="answer<%= question.getId() %>" value="1"> <%= question.getOption1() %><br>
                <input type="radio" name="answer<%= question.getId() %>" value="2"> <%= question.getOption2() %><br>
                <input type="radio" name="answer<%= question.getId() %>" value="3"> <%= question.getOption3() %><br>
                <input type="radio" name="answer<%= question.getId() %>" value="4"> <%= question.getOption4() %><br>
                <hr>
        <% } } %>
        <input type="submit" value="Submit">
    </form>

    <br>
    <br>
    <form action="userdashboard.jsp" method="get">
        <input type="submit" value="Back to Dashboard">
    </form>
</body>
</html>


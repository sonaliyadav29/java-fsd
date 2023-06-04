<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: PowderBlue ;
        }
        
        h1 {
            text-align: center;
            margin-top: 50px;
            color: #333;
        }
        
        h2 {
            margin: 20px 0;
            color: #333;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 1px solid #ccc;
        }
        
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #e8e8e8;
            font-weight: bold;
            color: #333;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        a {
            text-decoration: none;
            color: CadetBlue;
            transition: color 0.3s ease;
        }
        
        a:hover {
            color: #666;
        }
    </style>
</head>
<body>
    <h1>Add Questions to Quiz</h1>
    
    <h2>Subjects:</h2>
    <table>
        <thead>
            <tr>
                <th>Subject</th>
                <th>Add Question</th>
                <th>View Question</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SQL</td>
                <td><a href="addquestionsql.jsp">Add SQL Question</a></td>
                <td><a href="viewsqllist.jsp">View SQL Questions</a></td>
            </tr>
        </tbody>
    </table>
    
</body>
</html>



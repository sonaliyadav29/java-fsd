<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
            background-color: #e6ffff;
        }
        
        h1 {
            text-align: center;
            margin-top: 50px;
        }
        
        form {
            width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
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
    </style>
</head>
<body>
    <h1>Add SQL Questions</h1>
    
    <form action="addsqlquestion" method="post">
        <label for="question">Question:</label>
        <input type="text" id="question" name="question">
        
        <label for="option1">Option 1:</label>
        <input type="text" id="option1" name="option1">
        
        <label for="option2">Option 2:</label>
        <input type="text" id="option2" name="option2">
        
        <label for="option3">Option 3:</label>
        <input type="text" id="option3" name="option3">
        
        <label for="option4">Option 4:</label>
        <input type="text" id="option4" name="option4">
        
        <label for="correctOption">Correct Option:</label>
        <input type="text" id="correctOption" name="correctOption">
        
        <input type="submit" value="Add Question">
    </form>
</body>
</html>




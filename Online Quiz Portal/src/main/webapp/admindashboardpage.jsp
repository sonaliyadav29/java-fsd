<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
     
    }
    
    header {
      background-color: #ccf5ff;
      padding: 10px;
      text-align: right;
    }
    
    .container {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
    }
    
    h1 {
      color: #333;
      text-align:center;
    }
    
    .link {
      display: block;
      margin-bottom: 10px;
      padding: 10px;
      background-color: #d1d1e0;
      border-radius: 4px;
      text-decoration: blue;
      color: #000;
      text-align: center;
      transition: background-color 0.3s ease;
    }
    
    .link:hover {
      background-color: #ddd;
    }
  </style>
</head>
<body>
  <header>
    <a href="logoutServlet" class="link">Logout</a>
  </header>
  
  <div class="container">
    <h1>Welcome, Admin!</h1>
    <a href="addquestion.jsp" class="link">Add Questions to Quiz</a>
    <a href="viewuser.jsp" class="link">View User List</a>
  </div>
</body>
</html>



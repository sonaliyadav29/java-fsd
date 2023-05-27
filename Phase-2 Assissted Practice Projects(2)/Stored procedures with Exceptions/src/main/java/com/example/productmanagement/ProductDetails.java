package com.example.productmanagement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProductDetails extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    double price = Double.parseDouble(request.getParameter("price"));
    String description = request.getParameter("description");

    try (Connection connection = DBConnection.getConnection();
         PreparedStatement statement = connection.prepareStatement("CALL add_product(?, ?, ?)")) {
      statement.setString(1, name);
      statement.setDouble(2, price);
      statement.setString(3, description);
      statement.executeUpdate();
    } catch (SQLException e) {
      e.printStackTrace();
    }

    response.sendRedirect("index.html");
  }
}

package com.example.productmanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
  private static final String DB_URL = "jdbc:mysql://localhost/mydatabase";
  private static final String DB_USER = "root";
  private static final String DB_PASSWORD = "Sona@1234";

  public static Connection getConnection() throws SQLException {
    return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
  }
}

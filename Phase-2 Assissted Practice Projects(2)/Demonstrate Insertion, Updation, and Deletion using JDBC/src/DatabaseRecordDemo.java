import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseRecordDemo {

    private static final String DB_URL = "jdbc:mysql://localhost/db1";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Sona@1234";

    public static void main(String[] args) {
        insertRecord("John Doe", "john@example.com", "123456");
        updateRecord(1, "John Doe", "johndoe@example.com", "654321");
        deleteRecord(2);
    }

    public static void insertRecord(String name, String email, String phone) {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String insertQuery = "INSERT INTO users (name, email, phone) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(insertQuery);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("Record inserted successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void updateRecord(int id, String name, String email, String phone) {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String updateQuery = "UPDATE users SET name = ?, email = ?, phone = ? WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(updateQuery);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setInt(4, id);
            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Record updated successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void deleteRecord(int id) {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String deleteQuery = "DELETE FROM users WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(deleteQuery);
            statement.setInt(1, id);
            int rowsDeleted = statement.executeUpdate();
            if (rowsDeleted > 0) {
                System.out.println("Record deleted successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
